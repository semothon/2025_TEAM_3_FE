// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GroupDetail _$GroupDetailFromJson(Map<String, dynamic> json) {
  return _GroupDetail.fromJson(json);
}

/// @nodoc
mixin _$GroupDetail {
  Group get group => throw _privateConstructorUsedError; // 모임 정보
  List<Schedule> get schedule => throw _privateConstructorUsedError; // 일정 리스트
  List<SharedRecord> get sharedRecords =>
      throw _privateConstructorUsedError; // 공유 기록
  List<PersonalRecord> get personalRecords =>
      throw _privateConstructorUsedError;

  /// Serializes this GroupDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GroupDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GroupDetailCopyWith<GroupDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupDetailCopyWith<$Res> {
  factory $GroupDetailCopyWith(
          GroupDetail value, $Res Function(GroupDetail) then) =
      _$GroupDetailCopyWithImpl<$Res, GroupDetail>;
  @useResult
  $Res call(
      {Group group,
      List<Schedule> schedule,
      List<SharedRecord> sharedRecords,
      List<PersonalRecord> personalRecords});

  $GroupCopyWith<$Res> get group;
}

/// @nodoc
class _$GroupDetailCopyWithImpl<$Res, $Val extends GroupDetail>
    implements $GroupDetailCopyWith<$Res> {
  _$GroupDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GroupDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group = null,
    Object? schedule = null,
    Object? sharedRecords = null,
    Object? personalRecords = null,
  }) {
    return _then(_value.copyWith(
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as Group,
      schedule: null == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as List<Schedule>,
      sharedRecords: null == sharedRecords
          ? _value.sharedRecords
          : sharedRecords // ignore: cast_nullable_to_non_nullable
              as List<SharedRecord>,
      personalRecords: null == personalRecords
          ? _value.personalRecords
          : personalRecords // ignore: cast_nullable_to_non_nullable
              as List<PersonalRecord>,
    ) as $Val);
  }

  /// Create a copy of GroupDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GroupCopyWith<$Res> get group {
    return $GroupCopyWith<$Res>(_value.group, (value) {
      return _then(_value.copyWith(group: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GroupDetailImplCopyWith<$Res>
    implements $GroupDetailCopyWith<$Res> {
  factory _$$GroupDetailImplCopyWith(
          _$GroupDetailImpl value, $Res Function(_$GroupDetailImpl) then) =
      __$$GroupDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Group group,
      List<Schedule> schedule,
      List<SharedRecord> sharedRecords,
      List<PersonalRecord> personalRecords});

  @override
  $GroupCopyWith<$Res> get group;
}

/// @nodoc
class __$$GroupDetailImplCopyWithImpl<$Res>
    extends _$GroupDetailCopyWithImpl<$Res, _$GroupDetailImpl>
    implements _$$GroupDetailImplCopyWith<$Res> {
  __$$GroupDetailImplCopyWithImpl(
      _$GroupDetailImpl _value, $Res Function(_$GroupDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of GroupDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group = null,
    Object? schedule = null,
    Object? sharedRecords = null,
    Object? personalRecords = null,
  }) {
    return _then(_$GroupDetailImpl(
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as Group,
      schedule: null == schedule
          ? _value._schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as List<Schedule>,
      sharedRecords: null == sharedRecords
          ? _value._sharedRecords
          : sharedRecords // ignore: cast_nullable_to_non_nullable
              as List<SharedRecord>,
      personalRecords: null == personalRecords
          ? _value._personalRecords
          : personalRecords // ignore: cast_nullable_to_non_nullable
              as List<PersonalRecord>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GroupDetailImpl implements _GroupDetail {
  const _$GroupDetailImpl(
      {required this.group,
      required final List<Schedule> schedule,
      required final List<SharedRecord> sharedRecords,
      required final List<PersonalRecord> personalRecords})
      : _schedule = schedule,
        _sharedRecords = sharedRecords,
        _personalRecords = personalRecords;

  factory _$GroupDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroupDetailImplFromJson(json);

  @override
  final Group group;
// 모임 정보
  final List<Schedule> _schedule;
// 모임 정보
  @override
  List<Schedule> get schedule {
    if (_schedule is EqualUnmodifiableListView) return _schedule;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_schedule);
  }

// 일정 리스트
  final List<SharedRecord> _sharedRecords;
// 일정 리스트
  @override
  List<SharedRecord> get sharedRecords {
    if (_sharedRecords is EqualUnmodifiableListView) return _sharedRecords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sharedRecords);
  }

// 공유 기록
  final List<PersonalRecord> _personalRecords;
// 공유 기록
  @override
  List<PersonalRecord> get personalRecords {
    if (_personalRecords is EqualUnmodifiableListView) return _personalRecords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_personalRecords);
  }

  @override
  String toString() {
    return 'GroupDetail(group: $group, schedule: $schedule, sharedRecords: $sharedRecords, personalRecords: $personalRecords)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupDetailImpl &&
            (identical(other.group, group) || other.group == group) &&
            const DeepCollectionEquality().equals(other._schedule, _schedule) &&
            const DeepCollectionEquality()
                .equals(other._sharedRecords, _sharedRecords) &&
            const DeepCollectionEquality()
                .equals(other._personalRecords, _personalRecords));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      group,
      const DeepCollectionEquality().hash(_schedule),
      const DeepCollectionEquality().hash(_sharedRecords),
      const DeepCollectionEquality().hash(_personalRecords));

  /// Create a copy of GroupDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupDetailImplCopyWith<_$GroupDetailImpl> get copyWith =>
      __$$GroupDetailImplCopyWithImpl<_$GroupDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupDetailImplToJson(
      this,
    );
  }
}

abstract class _GroupDetail implements GroupDetail {
  const factory _GroupDetail(
      {required final Group group,
      required final List<Schedule> schedule,
      required final List<SharedRecord> sharedRecords,
      required final List<PersonalRecord> personalRecords}) = _$GroupDetailImpl;

  factory _GroupDetail.fromJson(Map<String, dynamic> json) =
      _$GroupDetailImpl.fromJson;

  @override
  Group get group; // 모임 정보
  @override
  List<Schedule> get schedule; // 일정 리스트
  @override
  List<SharedRecord> get sharedRecords; // 공유 기록
  @override
  List<PersonalRecord> get personalRecords;

  /// Create a copy of GroupDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupDetailImplCopyWith<_$GroupDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Group _$GroupFromJson(Map<String, dynamic> json) {
  return _Group.fromJson(json);
}

/// @nodoc
mixin _$Group {
  String get title => throw _privateConstructorUsedError;
  bool get approve => throw _privateConstructorUsedError;
  String get meet => throw _privateConstructorUsedError;
  String get attendance => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_members')
  int get maxMembers => throw _privateConstructorUsedError;
  @JsonKey(name: 'num_members')
  int get numMembers => throw _privateConstructorUsedError;
  @JsonKey(name: 'onelineDescription')
  String? get onelineDescription => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String? get memo => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;

  /// Serializes this Group to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Group
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GroupCopyWith<Group> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupCopyWith<$Res> {
  factory $GroupCopyWith(Group value, $Res Function(Group) then) =
      _$GroupCopyWithImpl<$Res, Group>;
  @useResult
  $Res call(
      {String title,
      bool approve,
      String meet,
      String attendance,
      @JsonKey(name: 'max_members') int maxMembers,
      @JsonKey(name: 'num_members') int numMembers,
      @JsonKey(name: 'onelineDescription') String? onelineDescription,
      String description,
      String? memo,
      String thumbnail});
}

/// @nodoc
class _$GroupCopyWithImpl<$Res, $Val extends Group>
    implements $GroupCopyWith<$Res> {
  _$GroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Group
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? approve = null,
    Object? meet = null,
    Object? attendance = null,
    Object? maxMembers = null,
    Object? numMembers = null,
    Object? onelineDescription = freezed,
    Object? description = null,
    Object? memo = freezed,
    Object? thumbnail = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      approve: null == approve
          ? _value.approve
          : approve // ignore: cast_nullable_to_non_nullable
              as bool,
      meet: null == meet
          ? _value.meet
          : meet // ignore: cast_nullable_to_non_nullable
              as String,
      attendance: null == attendance
          ? _value.attendance
          : attendance // ignore: cast_nullable_to_non_nullable
              as String,
      maxMembers: null == maxMembers
          ? _value.maxMembers
          : maxMembers // ignore: cast_nullable_to_non_nullable
              as int,
      numMembers: null == numMembers
          ? _value.numMembers
          : numMembers // ignore: cast_nullable_to_non_nullable
              as int,
      onelineDescription: freezed == onelineDescription
          ? _value.onelineDescription
          : onelineDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      memo: freezed == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GroupImplCopyWith<$Res> implements $GroupCopyWith<$Res> {
  factory _$$GroupImplCopyWith(
          _$GroupImpl value, $Res Function(_$GroupImpl) then) =
      __$$GroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      bool approve,
      String meet,
      String attendance,
      @JsonKey(name: 'max_members') int maxMembers,
      @JsonKey(name: 'num_members') int numMembers,
      @JsonKey(name: 'onelineDescription') String? onelineDescription,
      String description,
      String? memo,
      String thumbnail});
}

/// @nodoc
class __$$GroupImplCopyWithImpl<$Res>
    extends _$GroupCopyWithImpl<$Res, _$GroupImpl>
    implements _$$GroupImplCopyWith<$Res> {
  __$$GroupImplCopyWithImpl(
      _$GroupImpl _value, $Res Function(_$GroupImpl) _then)
      : super(_value, _then);

  /// Create a copy of Group
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? approve = null,
    Object? meet = null,
    Object? attendance = null,
    Object? maxMembers = null,
    Object? numMembers = null,
    Object? onelineDescription = freezed,
    Object? description = null,
    Object? memo = freezed,
    Object? thumbnail = null,
  }) {
    return _then(_$GroupImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      approve: null == approve
          ? _value.approve
          : approve // ignore: cast_nullable_to_non_nullable
              as bool,
      meet: null == meet
          ? _value.meet
          : meet // ignore: cast_nullable_to_non_nullable
              as String,
      attendance: null == attendance
          ? _value.attendance
          : attendance // ignore: cast_nullable_to_non_nullable
              as String,
      maxMembers: null == maxMembers
          ? _value.maxMembers
          : maxMembers // ignore: cast_nullable_to_non_nullable
              as int,
      numMembers: null == numMembers
          ? _value.numMembers
          : numMembers // ignore: cast_nullable_to_non_nullable
              as int,
      onelineDescription: freezed == onelineDescription
          ? _value.onelineDescription
          : onelineDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      memo: freezed == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GroupImpl implements _Group {
  const _$GroupImpl(
      {required this.title,
      required this.approve,
      required this.meet,
      required this.attendance,
      @JsonKey(name: 'max_members') required this.maxMembers,
      @JsonKey(name: 'num_members') required this.numMembers,
      @JsonKey(name: 'onelineDescription') this.onelineDescription,
      required this.description,
      this.memo,
      required this.thumbnail});

  factory _$GroupImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroupImplFromJson(json);

  @override
  final String title;
  @override
  final bool approve;
  @override
  final String meet;
  @override
  final String attendance;
  @override
  @JsonKey(name: 'max_members')
  final int maxMembers;
  @override
  @JsonKey(name: 'num_members')
  final int numMembers;
  @override
  @JsonKey(name: 'onelineDescription')
  final String? onelineDescription;
  @override
  final String description;
  @override
  final String? memo;
  @override
  final String thumbnail;

  @override
  String toString() {
    return 'Group(title: $title, approve: $approve, meet: $meet, attendance: $attendance, maxMembers: $maxMembers, numMembers: $numMembers, onelineDescription: $onelineDescription, description: $description, memo: $memo, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.approve, approve) || other.approve == approve) &&
            (identical(other.meet, meet) || other.meet == meet) &&
            (identical(other.attendance, attendance) ||
                other.attendance == attendance) &&
            (identical(other.maxMembers, maxMembers) ||
                other.maxMembers == maxMembers) &&
            (identical(other.numMembers, numMembers) ||
                other.numMembers == numMembers) &&
            (identical(other.onelineDescription, onelineDescription) ||
                other.onelineDescription == onelineDescription) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.memo, memo) || other.memo == memo) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, approve, meet, attendance,
      maxMembers, numMembers, onelineDescription, description, memo, thumbnail);

  /// Create a copy of Group
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupImplCopyWith<_$GroupImpl> get copyWith =>
      __$$GroupImplCopyWithImpl<_$GroupImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupImplToJson(
      this,
    );
  }
}

abstract class _Group implements Group {
  const factory _Group(
      {required final String title,
      required final bool approve,
      required final String meet,
      required final String attendance,
      @JsonKey(name: 'max_members') required final int maxMembers,
      @JsonKey(name: 'num_members') required final int numMembers,
      @JsonKey(name: 'onelineDescription') final String? onelineDescription,
      required final String description,
      final String? memo,
      required final String thumbnail}) = _$GroupImpl;

  factory _Group.fromJson(Map<String, dynamic> json) = _$GroupImpl.fromJson;

  @override
  String get title;
  @override
  bool get approve;
  @override
  String get meet;
  @override
  String get attendance;
  @override
  @JsonKey(name: 'max_members')
  int get maxMembers;
  @override
  @JsonKey(name: 'num_members')
  int get numMembers;
  @override
  @JsonKey(name: 'onelineDescription')
  String? get onelineDescription;
  @override
  String get description;
  @override
  String? get memo;
  @override
  String get thumbnail;

  /// Create a copy of Group
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupImplCopyWith<_$GroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Schedule _$ScheduleFromJson(Map<String, dynamic> json) {
  return _Schedule.fromJson(json);
}

/// @nodoc
mixin _$Schedule {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'group_id')
  int get groupId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_datetime')
  DateTime get startDatetime => throw _privateConstructorUsedError;
  String get memo => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Schedule to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Schedule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScheduleCopyWith<Schedule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleCopyWith<$Res> {
  factory $ScheduleCopyWith(Schedule value, $Res Function(Schedule) then) =
      _$ScheduleCopyWithImpl<$Res, Schedule>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'group_id') int groupId,
      String title,
      @JsonKey(name: 'start_datetime') DateTime startDatetime,
      String memo,
      String location,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class _$ScheduleCopyWithImpl<$Res, $Val extends Schedule>
    implements $ScheduleCopyWith<$Res> {
  _$ScheduleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Schedule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? groupId = null,
    Object? title = null,
    Object? startDatetime = null,
    Object? memo = null,
    Object? location = null,
    Object? createdAt = null,
    Object? updatedAt = null,
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
      startDatetime: null == startDatetime
          ? _value.startDatetime
          : startDatetime // ignore: cast_nullable_to_non_nullable
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
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScheduleImplCopyWith<$Res>
    implements $ScheduleCopyWith<$Res> {
  factory _$$ScheduleImplCopyWith(
          _$ScheduleImpl value, $Res Function(_$ScheduleImpl) then) =
      __$$ScheduleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'group_id') int groupId,
      String title,
      @JsonKey(name: 'start_datetime') DateTime startDatetime,
      String memo,
      String location,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class __$$ScheduleImplCopyWithImpl<$Res>
    extends _$ScheduleCopyWithImpl<$Res, _$ScheduleImpl>
    implements _$$ScheduleImplCopyWith<$Res> {
  __$$ScheduleImplCopyWithImpl(
      _$ScheduleImpl _value, $Res Function(_$ScheduleImpl) _then)
      : super(_value, _then);

  /// Create a copy of Schedule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? groupId = null,
    Object? title = null,
    Object? startDatetime = null,
    Object? memo = null,
    Object? location = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$ScheduleImpl(
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
      startDatetime: null == startDatetime
          ? _value.startDatetime
          : startDatetime // ignore: cast_nullable_to_non_nullable
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
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScheduleImpl implements _Schedule {
  const _$ScheduleImpl(
      {required this.id,
      @JsonKey(name: 'group_id') required this.groupId,
      required this.title,
      @JsonKey(name: 'start_datetime') required this.startDatetime,
      required this.memo,
      required this.location,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt});

  factory _$ScheduleImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScheduleImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'group_id')
  final int groupId;
  @override
  final String title;
  @override
  @JsonKey(name: 'start_datetime')
  final DateTime startDatetime;
  @override
  final String memo;
  @override
  final String location;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Schedule(id: $id, groupId: $groupId, title: $title, startDatetime: $startDatetime, memo: $memo, location: $location, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.startDatetime, startDatetime) ||
                other.startDatetime == startDatetime) &&
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
  int get hashCode => Object.hash(runtimeType, id, groupId, title,
      startDatetime, memo, location, createdAt, updatedAt);

  /// Create a copy of Schedule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleImplCopyWith<_$ScheduleImpl> get copyWith =>
      __$$ScheduleImplCopyWithImpl<_$ScheduleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScheduleImplToJson(
      this,
    );
  }
}

abstract class _Schedule implements Schedule {
  const factory _Schedule(
      {required final int id,
      @JsonKey(name: 'group_id') required final int groupId,
      required final String title,
      @JsonKey(name: 'start_datetime') required final DateTime startDatetime,
      required final String memo,
      required final String location,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      @JsonKey(name: 'updated_at')
      required final DateTime updatedAt}) = _$ScheduleImpl;

  factory _Schedule.fromJson(Map<String, dynamic> json) =
      _$ScheduleImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'group_id')
  int get groupId;
  @override
  String get title;
  @override
  @JsonKey(name: 'start_datetime')
  DateTime get startDatetime;
  @override
  String get memo;
  @override
  String get location;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;

  /// Create a copy of Schedule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduleImplCopyWith<_$ScheduleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SharedRecord _$SharedRecordFromJson(Map<String, dynamic> json) {
  return _SharedRecord.fromJson(json);
}

/// @nodoc
mixin _$SharedRecord {
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'file_url')
  List<dynamic>? get fileUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this SharedRecord to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SharedRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SharedRecordCopyWith<SharedRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SharedRecordCopyWith<$Res> {
  factory $SharedRecordCopyWith(
          SharedRecord value, $Res Function(SharedRecord) then) =
      _$SharedRecordCopyWithImpl<$Res, SharedRecord>;
  @useResult
  $Res call(
      {String title,
      String content,
      @JsonKey(name: 'file_url') List<dynamic>? fileUrl,
      @JsonKey(name: 'created_at') DateTime createdAt});
}

/// @nodoc
class _$SharedRecordCopyWithImpl<$Res, $Val extends SharedRecord>
    implements $SharedRecordCopyWith<$Res> {
  _$SharedRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SharedRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
    Object? fileUrl = freezed,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      fileUrl: freezed == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SharedRecordImplCopyWith<$Res>
    implements $SharedRecordCopyWith<$Res> {
  factory _$$SharedRecordImplCopyWith(
          _$SharedRecordImpl value, $Res Function(_$SharedRecordImpl) then) =
      __$$SharedRecordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String content,
      @JsonKey(name: 'file_url') List<dynamic>? fileUrl,
      @JsonKey(name: 'created_at') DateTime createdAt});
}

/// @nodoc
class __$$SharedRecordImplCopyWithImpl<$Res>
    extends _$SharedRecordCopyWithImpl<$Res, _$SharedRecordImpl>
    implements _$$SharedRecordImplCopyWith<$Res> {
  __$$SharedRecordImplCopyWithImpl(
      _$SharedRecordImpl _value, $Res Function(_$SharedRecordImpl) _then)
      : super(_value, _then);

  /// Create a copy of SharedRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
    Object? fileUrl = freezed,
    Object? createdAt = null,
  }) {
    return _then(_$SharedRecordImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      fileUrl: freezed == fileUrl
          ? _value._fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SharedRecordImpl implements _SharedRecord {
  const _$SharedRecordImpl(
      {required this.title,
      required this.content,
      @JsonKey(name: 'file_url') final List<dynamic>? fileUrl,
      @JsonKey(name: 'created_at') required this.createdAt})
      : _fileUrl = fileUrl;

  factory _$SharedRecordImpl.fromJson(Map<String, dynamic> json) =>
      _$$SharedRecordImplFromJson(json);

  @override
  final String title;
  @override
  final String content;
  final List<dynamic>? _fileUrl;
  @override
  @JsonKey(name: 'file_url')
  List<dynamic>? get fileUrl {
    final value = _fileUrl;
    if (value == null) return null;
    if (_fileUrl is EqualUnmodifiableListView) return _fileUrl;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  @override
  String toString() {
    return 'SharedRecord(title: $title, content: $content, fileUrl: $fileUrl, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SharedRecordImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality().equals(other._fileUrl, _fileUrl) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, content,
      const DeepCollectionEquality().hash(_fileUrl), createdAt);

  /// Create a copy of SharedRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SharedRecordImplCopyWith<_$SharedRecordImpl> get copyWith =>
      __$$SharedRecordImplCopyWithImpl<_$SharedRecordImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SharedRecordImplToJson(
      this,
    );
  }
}

abstract class _SharedRecord implements SharedRecord {
  const factory _SharedRecord(
          {required final String title,
          required final String content,
          @JsonKey(name: 'file_url') final List<dynamic>? fileUrl,
          @JsonKey(name: 'created_at') required final DateTime createdAt}) =
      _$SharedRecordImpl;

  factory _SharedRecord.fromJson(Map<String, dynamic> json) =
      _$SharedRecordImpl.fromJson;

  @override
  String get title;
  @override
  String get content;
  @override
  @JsonKey(name: 'file_url')
  List<dynamic>? get fileUrl;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;

  /// Create a copy of SharedRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SharedRecordImplCopyWith<_$SharedRecordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PersonalRecord _$PersonalRecordFromJson(Map<String, dynamic> json) {
  return _PersonalRecord.fromJson(json);
}

/// @nodoc
mixin _$PersonalRecord {
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_public')
  bool get isPublic => throw _privateConstructorUsedError;
  @JsonKey(name: 'file_url')
  List<dynamic>? get fileUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this PersonalRecord to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PersonalRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PersonalRecordCopyWith<PersonalRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonalRecordCopyWith<$Res> {
  factory $PersonalRecordCopyWith(
          PersonalRecord value, $Res Function(PersonalRecord) then) =
      _$PersonalRecordCopyWithImpl<$Res, PersonalRecord>;
  @useResult
  $Res call(
      {String title,
      String content,
      @JsonKey(name: 'is_public') bool isPublic,
      @JsonKey(name: 'file_url') List<dynamic>? fileUrl,
      @JsonKey(name: 'created_at') DateTime createdAt});
}

/// @nodoc
class _$PersonalRecordCopyWithImpl<$Res, $Val extends PersonalRecord>
    implements $PersonalRecordCopyWith<$Res> {
  _$PersonalRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PersonalRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
    Object? isPublic = null,
    Object? fileUrl = freezed,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      fileUrl: freezed == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PersonalRecordImplCopyWith<$Res>
    implements $PersonalRecordCopyWith<$Res> {
  factory _$$PersonalRecordImplCopyWith(_$PersonalRecordImpl value,
          $Res Function(_$PersonalRecordImpl) then) =
      __$$PersonalRecordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String content,
      @JsonKey(name: 'is_public') bool isPublic,
      @JsonKey(name: 'file_url') List<dynamic>? fileUrl,
      @JsonKey(name: 'created_at') DateTime createdAt});
}

/// @nodoc
class __$$PersonalRecordImplCopyWithImpl<$Res>
    extends _$PersonalRecordCopyWithImpl<$Res, _$PersonalRecordImpl>
    implements _$$PersonalRecordImplCopyWith<$Res> {
  __$$PersonalRecordImplCopyWithImpl(
      _$PersonalRecordImpl _value, $Res Function(_$PersonalRecordImpl) _then)
      : super(_value, _then);

  /// Create a copy of PersonalRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
    Object? isPublic = null,
    Object? fileUrl = freezed,
    Object? createdAt = null,
  }) {
    return _then(_$PersonalRecordImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      fileUrl: freezed == fileUrl
          ? _value._fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PersonalRecordImpl implements _PersonalRecord {
  const _$PersonalRecordImpl(
      {required this.title,
      required this.content,
      @JsonKey(name: 'is_public') required this.isPublic,
      @JsonKey(name: 'file_url') final List<dynamic>? fileUrl,
      @JsonKey(name: 'created_at') required this.createdAt})
      : _fileUrl = fileUrl;

  factory _$PersonalRecordImpl.fromJson(Map<String, dynamic> json) =>
      _$$PersonalRecordImplFromJson(json);

  @override
  final String title;
  @override
  final String content;
  @override
  @JsonKey(name: 'is_public')
  final bool isPublic;
  final List<dynamic>? _fileUrl;
  @override
  @JsonKey(name: 'file_url')
  List<dynamic>? get fileUrl {
    final value = _fileUrl;
    if (value == null) return null;
    if (_fileUrl is EqualUnmodifiableListView) return _fileUrl;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  @override
  String toString() {
    return 'PersonalRecord(title: $title, content: $content, isPublic: $isPublic, fileUrl: $fileUrl, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonalRecordImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.isPublic, isPublic) ||
                other.isPublic == isPublic) &&
            const DeepCollectionEquality().equals(other._fileUrl, _fileUrl) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, content, isPublic,
      const DeepCollectionEquality().hash(_fileUrl), createdAt);

  /// Create a copy of PersonalRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonalRecordImplCopyWith<_$PersonalRecordImpl> get copyWith =>
      __$$PersonalRecordImplCopyWithImpl<_$PersonalRecordImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PersonalRecordImplToJson(
      this,
    );
  }
}

abstract class _PersonalRecord implements PersonalRecord {
  const factory _PersonalRecord(
          {required final String title,
          required final String content,
          @JsonKey(name: 'is_public') required final bool isPublic,
          @JsonKey(name: 'file_url') final List<dynamic>? fileUrl,
          @JsonKey(name: 'created_at') required final DateTime createdAt}) =
      _$PersonalRecordImpl;

  factory _PersonalRecord.fromJson(Map<String, dynamic> json) =
      _$PersonalRecordImpl.fromJson;

  @override
  String get title;
  @override
  String get content;
  @override
  @JsonKey(name: 'is_public')
  bool get isPublic;
  @override
  @JsonKey(name: 'file_url')
  List<dynamic>? get fileUrl;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;

  /// Create a copy of PersonalRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PersonalRecordImplCopyWith<_$PersonalRecordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
