// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Home _$HomeFromJson(Map<String, dynamic> json) {
  return _Home.fromJson(json);
}

/// @nodoc
mixin _$Home {
  String get name => throw _privateConstructorUsedError; // 사용자 이름
  TodaySchedule get todaySchedule =>
      throw _privateConstructorUsedError; // 오늘의 일정 정보
  List<UpcomingSchedule> get upcomingSchedules =>
      throw _privateConstructorUsedError; // 다가오는 일정 리스트
  JoinedGroups get joinedGroups => throw _privateConstructorUsedError;

  /// Serializes this Home to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Home
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeCopyWith<Home> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeCopyWith<$Res> {
  factory $HomeCopyWith(Home value, $Res Function(Home) then) =
      _$HomeCopyWithImpl<$Res, Home>;
  @useResult
  $Res call(
      {String name,
      TodaySchedule todaySchedule,
      List<UpcomingSchedule> upcomingSchedules,
      JoinedGroups joinedGroups});

  $TodayScheduleCopyWith<$Res> get todaySchedule;
  $JoinedGroupsCopyWith<$Res> get joinedGroups;
}

/// @nodoc
class _$HomeCopyWithImpl<$Res, $Val extends Home>
    implements $HomeCopyWith<$Res> {
  _$HomeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Home
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? todaySchedule = null,
    Object? upcomingSchedules = null,
    Object? joinedGroups = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      todaySchedule: null == todaySchedule
          ? _value.todaySchedule
          : todaySchedule // ignore: cast_nullable_to_non_nullable
              as TodaySchedule,
      upcomingSchedules: null == upcomingSchedules
          ? _value.upcomingSchedules
          : upcomingSchedules // ignore: cast_nullable_to_non_nullable
              as List<UpcomingSchedule>,
      joinedGroups: null == joinedGroups
          ? _value.joinedGroups
          : joinedGroups // ignore: cast_nullable_to_non_nullable
              as JoinedGroups,
    ) as $Val);
  }

  /// Create a copy of Home
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TodayScheduleCopyWith<$Res> get todaySchedule {
    return $TodayScheduleCopyWith<$Res>(_value.todaySchedule, (value) {
      return _then(_value.copyWith(todaySchedule: value) as $Val);
    });
  }

  /// Create a copy of Home
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JoinedGroupsCopyWith<$Res> get joinedGroups {
    return $JoinedGroupsCopyWith<$Res>(_value.joinedGroups, (value) {
      return _then(_value.copyWith(joinedGroups: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeImplCopyWith<$Res> implements $HomeCopyWith<$Res> {
  factory _$$HomeImplCopyWith(
          _$HomeImpl value, $Res Function(_$HomeImpl) then) =
      __$$HomeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      TodaySchedule todaySchedule,
      List<UpcomingSchedule> upcomingSchedules,
      JoinedGroups joinedGroups});

  @override
  $TodayScheduleCopyWith<$Res> get todaySchedule;
  @override
  $JoinedGroupsCopyWith<$Res> get joinedGroups;
}

/// @nodoc
class __$$HomeImplCopyWithImpl<$Res>
    extends _$HomeCopyWithImpl<$Res, _$HomeImpl>
    implements _$$HomeImplCopyWith<$Res> {
  __$$HomeImplCopyWithImpl(_$HomeImpl _value, $Res Function(_$HomeImpl) _then)
      : super(_value, _then);

  /// Create a copy of Home
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? todaySchedule = null,
    Object? upcomingSchedules = null,
    Object? joinedGroups = null,
  }) {
    return _then(_$HomeImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      todaySchedule: null == todaySchedule
          ? _value.todaySchedule
          : todaySchedule // ignore: cast_nullable_to_non_nullable
              as TodaySchedule,
      upcomingSchedules: null == upcomingSchedules
          ? _value._upcomingSchedules
          : upcomingSchedules // ignore: cast_nullable_to_non_nullable
              as List<UpcomingSchedule>,
      joinedGroups: null == joinedGroups
          ? _value.joinedGroups
          : joinedGroups // ignore: cast_nullable_to_non_nullable
              as JoinedGroups,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeImpl implements _Home {
  const _$HomeImpl(
      {required this.name,
      required this.todaySchedule,
      required final List<UpcomingSchedule> upcomingSchedules,
      required this.joinedGroups})
      : _upcomingSchedules = upcomingSchedules;

  factory _$HomeImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeImplFromJson(json);

  @override
  final String name;
// 사용자 이름
  @override
  final TodaySchedule todaySchedule;
// 오늘의 일정 정보
  final List<UpcomingSchedule> _upcomingSchedules;
// 오늘의 일정 정보
  @override
  List<UpcomingSchedule> get upcomingSchedules {
    if (_upcomingSchedules is EqualUnmodifiableListView)
      return _upcomingSchedules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_upcomingSchedules);
  }

// 다가오는 일정 리스트
  @override
  final JoinedGroups joinedGroups;

  @override
  String toString() {
    return 'Home(name: $name, todaySchedule: $todaySchedule, upcomingSchedules: $upcomingSchedules, joinedGroups: $joinedGroups)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.todaySchedule, todaySchedule) ||
                other.todaySchedule == todaySchedule) &&
            const DeepCollectionEquality()
                .equals(other._upcomingSchedules, _upcomingSchedules) &&
            (identical(other.joinedGroups, joinedGroups) ||
                other.joinedGroups == joinedGroups));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, todaySchedule,
      const DeepCollectionEquality().hash(_upcomingSchedules), joinedGroups);

  /// Create a copy of Home
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeImplCopyWith<_$HomeImpl> get copyWith =>
      __$$HomeImplCopyWithImpl<_$HomeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeImplToJson(
      this,
    );
  }
}

abstract class _Home implements Home {
  const factory _Home(
      {required final String name,
      required final TodaySchedule todaySchedule,
      required final List<UpcomingSchedule> upcomingSchedules,
      required final JoinedGroups joinedGroups}) = _$HomeImpl;

  factory _Home.fromJson(Map<String, dynamic> json) = _$HomeImpl.fromJson;

  @override
  String get name; // 사용자 이름
  @override
  TodaySchedule get todaySchedule; // 오늘의 일정 정보
  @override
  List<UpcomingSchedule> get upcomingSchedules; // 다가오는 일정 리스트
  @override
  JoinedGroups get joinedGroups;

  /// Create a copy of Home
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeImplCopyWith<_$HomeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TodaySchedule _$TodayScheduleFromJson(Map<String, dynamic> json) {
  return _TodaySchedule.fromJson(json);
}

/// @nodoc
mixin _$TodaySchedule {
  int get count => throw _privateConstructorUsedError; // 오늘의 일정 수
  List<String> get groupNames => throw _privateConstructorUsedError;

  /// Serializes this TodaySchedule to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TodaySchedule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TodayScheduleCopyWith<TodaySchedule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodayScheduleCopyWith<$Res> {
  factory $TodayScheduleCopyWith(
          TodaySchedule value, $Res Function(TodaySchedule) then) =
      _$TodayScheduleCopyWithImpl<$Res, TodaySchedule>;
  @useResult
  $Res call({int count, List<String> groupNames});
}

/// @nodoc
class _$TodayScheduleCopyWithImpl<$Res, $Val extends TodaySchedule>
    implements $TodayScheduleCopyWith<$Res> {
  _$TodayScheduleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TodaySchedule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? groupNames = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      groupNames: null == groupNames
          ? _value.groupNames
          : groupNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodayScheduleImplCopyWith<$Res>
    implements $TodayScheduleCopyWith<$Res> {
  factory _$$TodayScheduleImplCopyWith(
          _$TodayScheduleImpl value, $Res Function(_$TodayScheduleImpl) then) =
      __$$TodayScheduleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, List<String> groupNames});
}

/// @nodoc
class __$$TodayScheduleImplCopyWithImpl<$Res>
    extends _$TodayScheduleCopyWithImpl<$Res, _$TodayScheduleImpl>
    implements _$$TodayScheduleImplCopyWith<$Res> {
  __$$TodayScheduleImplCopyWithImpl(
      _$TodayScheduleImpl _value, $Res Function(_$TodayScheduleImpl) _then)
      : super(_value, _then);

  /// Create a copy of TodaySchedule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? groupNames = null,
  }) {
    return _then(_$TodayScheduleImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      groupNames: null == groupNames
          ? _value._groupNames
          : groupNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TodayScheduleImpl implements _TodaySchedule {
  const _$TodayScheduleImpl(
      {required this.count, required final List<String> groupNames})
      : _groupNames = groupNames;

  factory _$TodayScheduleImpl.fromJson(Map<String, dynamic> json) =>
      _$$TodayScheduleImplFromJson(json);

  @override
  final int count;
// 오늘의 일정 수
  final List<String> _groupNames;
// 오늘의 일정 수
  @override
  List<String> get groupNames {
    if (_groupNames is EqualUnmodifiableListView) return _groupNames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groupNames);
  }

  @override
  String toString() {
    return 'TodaySchedule(count: $count, groupNames: $groupNames)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodayScheduleImpl &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality()
                .equals(other._groupNames, _groupNames));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, count, const DeepCollectionEquality().hash(_groupNames));

  /// Create a copy of TodaySchedule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TodayScheduleImplCopyWith<_$TodayScheduleImpl> get copyWith =>
      __$$TodayScheduleImplCopyWithImpl<_$TodayScheduleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TodayScheduleImplToJson(
      this,
    );
  }
}

abstract class _TodaySchedule implements TodaySchedule {
  const factory _TodaySchedule(
      {required final int count,
      required final List<String> groupNames}) = _$TodayScheduleImpl;

  factory _TodaySchedule.fromJson(Map<String, dynamic> json) =
      _$TodayScheduleImpl.fromJson;

  @override
  int get count; // 오늘의 일정 수
  @override
  List<String> get groupNames;

  /// Create a copy of TodaySchedule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TodayScheduleImplCopyWith<_$TodayScheduleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpcomingSchedule _$UpcomingScheduleFromJson(Map<String, dynamic> json) {
  return _UpcomingSchedule.fromJson(json);
}

/// @nodoc
mixin _$UpcomingSchedule {
  int get id => throw _privateConstructorUsedError; // 일정 ID
  String get title => throw _privateConstructorUsedError; // 일정 제목
  String get memo => throw _privateConstructorUsedError; // 일정 메모
  @JsonKey(name: 'start_datetime')
  DateTime get startDatetime => throw _privateConstructorUsedError; // 시작 시간
  String get location => throw _privateConstructorUsedError; // 장소
  @JsonKey(name: 'seconds_left')
  int get secondsLeft => throw _privateConstructorUsedError;

  /// Serializes this UpcomingSchedule to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpcomingSchedule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpcomingScheduleCopyWith<UpcomingSchedule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpcomingScheduleCopyWith<$Res> {
  factory $UpcomingScheduleCopyWith(
          UpcomingSchedule value, $Res Function(UpcomingSchedule) then) =
      _$UpcomingScheduleCopyWithImpl<$Res, UpcomingSchedule>;
  @useResult
  $Res call(
      {int id,
      String title,
      String memo,
      @JsonKey(name: 'start_datetime') DateTime startDatetime,
      String location,
      @JsonKey(name: 'seconds_left') int secondsLeft});
}

/// @nodoc
class _$UpcomingScheduleCopyWithImpl<$Res, $Val extends UpcomingSchedule>
    implements $UpcomingScheduleCopyWith<$Res> {
  _$UpcomingScheduleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpcomingSchedule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? memo = null,
    Object? startDatetime = null,
    Object? location = null,
    Object? secondsLeft = null,
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
      memo: null == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String,
      startDatetime: null == startDatetime
          ? _value.startDatetime
          : startDatetime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      secondsLeft: null == secondsLeft
          ? _value.secondsLeft
          : secondsLeft // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpcomingScheduleImplCopyWith<$Res>
    implements $UpcomingScheduleCopyWith<$Res> {
  factory _$$UpcomingScheduleImplCopyWith(_$UpcomingScheduleImpl value,
          $Res Function(_$UpcomingScheduleImpl) then) =
      __$$UpcomingScheduleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String memo,
      @JsonKey(name: 'start_datetime') DateTime startDatetime,
      String location,
      @JsonKey(name: 'seconds_left') int secondsLeft});
}

/// @nodoc
class __$$UpcomingScheduleImplCopyWithImpl<$Res>
    extends _$UpcomingScheduleCopyWithImpl<$Res, _$UpcomingScheduleImpl>
    implements _$$UpcomingScheduleImplCopyWith<$Res> {
  __$$UpcomingScheduleImplCopyWithImpl(_$UpcomingScheduleImpl _value,
      $Res Function(_$UpcomingScheduleImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpcomingSchedule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? memo = null,
    Object? startDatetime = null,
    Object? location = null,
    Object? secondsLeft = null,
  }) {
    return _then(_$UpcomingScheduleImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      memo: null == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String,
      startDatetime: null == startDatetime
          ? _value.startDatetime
          : startDatetime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      secondsLeft: null == secondsLeft
          ? _value.secondsLeft
          : secondsLeft // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpcomingScheduleImpl implements _UpcomingSchedule {
  const _$UpcomingScheduleImpl(
      {required this.id,
      required this.title,
      required this.memo,
      @JsonKey(name: 'start_datetime') required this.startDatetime,
      required this.location,
      @JsonKey(name: 'seconds_left') required this.secondsLeft});

  factory _$UpcomingScheduleImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpcomingScheduleImplFromJson(json);

  @override
  final int id;
// 일정 ID
  @override
  final String title;
// 일정 제목
  @override
  final String memo;
// 일정 메모
  @override
  @JsonKey(name: 'start_datetime')
  final DateTime startDatetime;
// 시작 시간
  @override
  final String location;
// 장소
  @override
  @JsonKey(name: 'seconds_left')
  final int secondsLeft;

  @override
  String toString() {
    return 'UpcomingSchedule(id: $id, title: $title, memo: $memo, startDatetime: $startDatetime, location: $location, secondsLeft: $secondsLeft)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpcomingScheduleImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.memo, memo) || other.memo == memo) &&
            (identical(other.startDatetime, startDatetime) ||
                other.startDatetime == startDatetime) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.secondsLeft, secondsLeft) ||
                other.secondsLeft == secondsLeft));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, memo, startDatetime, location, secondsLeft);

  /// Create a copy of UpcomingSchedule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpcomingScheduleImplCopyWith<_$UpcomingScheduleImpl> get copyWith =>
      __$$UpcomingScheduleImplCopyWithImpl<_$UpcomingScheduleImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpcomingScheduleImplToJson(
      this,
    );
  }
}

abstract class _UpcomingSchedule implements UpcomingSchedule {
  const factory _UpcomingSchedule(
      {required final int id,
      required final String title,
      required final String memo,
      @JsonKey(name: 'start_datetime') required final DateTime startDatetime,
      required final String location,
      @JsonKey(name: 'seconds_left')
      required final int secondsLeft}) = _$UpcomingScheduleImpl;

  factory _UpcomingSchedule.fromJson(Map<String, dynamic> json) =
      _$UpcomingScheduleImpl.fromJson;

  @override
  int get id; // 일정 ID
  @override
  String get title; // 일정 제목
  @override
  String get memo; // 일정 메모
  @override
  @JsonKey(name: 'start_datetime')
  DateTime get startDatetime; // 시작 시간
  @override
  String get location; // 장소
  @override
  @JsonKey(name: 'seconds_left')
  int get secondsLeft;

  /// Create a copy of UpcomingSchedule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpcomingScheduleImplCopyWith<_$UpcomingScheduleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

JoinedGroups _$JoinedGroupsFromJson(Map<String, dynamic> json) {
  return _JoinedGroups.fromJson(json);
}

/// @nodoc
mixin _$JoinedGroups {
  List<StudyGroup> get study =>
      throw _privateConstructorUsedError; // 스터디 모임 리스트
  List<StudyGroup> get club => throw _privateConstructorUsedError;

  /// Serializes this JoinedGroups to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JoinedGroups
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JoinedGroupsCopyWith<JoinedGroups> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JoinedGroupsCopyWith<$Res> {
  factory $JoinedGroupsCopyWith(
          JoinedGroups value, $Res Function(JoinedGroups) then) =
      _$JoinedGroupsCopyWithImpl<$Res, JoinedGroups>;
  @useResult
  $Res call({List<StudyGroup> study, List<StudyGroup> club});
}

/// @nodoc
class _$JoinedGroupsCopyWithImpl<$Res, $Val extends JoinedGroups>
    implements $JoinedGroupsCopyWith<$Res> {
  _$JoinedGroupsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JoinedGroups
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? study = null,
    Object? club = null,
  }) {
    return _then(_value.copyWith(
      study: null == study
          ? _value.study
          : study // ignore: cast_nullable_to_non_nullable
              as List<StudyGroup>,
      club: null == club
          ? _value.club
          : club // ignore: cast_nullable_to_non_nullable
              as List<StudyGroup>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JoinedGroupsImplCopyWith<$Res>
    implements $JoinedGroupsCopyWith<$Res> {
  factory _$$JoinedGroupsImplCopyWith(
          _$JoinedGroupsImpl value, $Res Function(_$JoinedGroupsImpl) then) =
      __$$JoinedGroupsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<StudyGroup> study, List<StudyGroup> club});
}

/// @nodoc
class __$$JoinedGroupsImplCopyWithImpl<$Res>
    extends _$JoinedGroupsCopyWithImpl<$Res, _$JoinedGroupsImpl>
    implements _$$JoinedGroupsImplCopyWith<$Res> {
  __$$JoinedGroupsImplCopyWithImpl(
      _$JoinedGroupsImpl _value, $Res Function(_$JoinedGroupsImpl) _then)
      : super(_value, _then);

  /// Create a copy of JoinedGroups
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? study = null,
    Object? club = null,
  }) {
    return _then(_$JoinedGroupsImpl(
      study: null == study
          ? _value._study
          : study // ignore: cast_nullable_to_non_nullable
              as List<StudyGroup>,
      club: null == club
          ? _value._club
          : club // ignore: cast_nullable_to_non_nullable
              as List<StudyGroup>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JoinedGroupsImpl implements _JoinedGroups {
  const _$JoinedGroupsImpl(
      {required final List<StudyGroup> study,
      required final List<StudyGroup> club})
      : _study = study,
        _club = club;

  factory _$JoinedGroupsImpl.fromJson(Map<String, dynamic> json) =>
      _$$JoinedGroupsImplFromJson(json);

  final List<StudyGroup> _study;
  @override
  List<StudyGroup> get study {
    if (_study is EqualUnmodifiableListView) return _study;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_study);
  }

// 스터디 모임 리스트
  final List<StudyGroup> _club;
// 스터디 모임 리스트
  @override
  List<StudyGroup> get club {
    if (_club is EqualUnmodifiableListView) return _club;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_club);
  }

  @override
  String toString() {
    return 'JoinedGroups(study: $study, club: $club)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JoinedGroupsImpl &&
            const DeepCollectionEquality().equals(other._study, _study) &&
            const DeepCollectionEquality().equals(other._club, _club));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_study),
      const DeepCollectionEquality().hash(_club));

  /// Create a copy of JoinedGroups
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JoinedGroupsImplCopyWith<_$JoinedGroupsImpl> get copyWith =>
      __$$JoinedGroupsImplCopyWithImpl<_$JoinedGroupsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JoinedGroupsImplToJson(
      this,
    );
  }
}

abstract class _JoinedGroups implements JoinedGroups {
  const factory _JoinedGroups(
      {required final List<StudyGroup> study,
      required final List<StudyGroup> club}) = _$JoinedGroupsImpl;

  factory _JoinedGroups.fromJson(Map<String, dynamic> json) =
      _$JoinedGroupsImpl.fromJson;

  @override
  List<StudyGroup> get study; // 스터디 모임 리스트
  @override
  List<StudyGroup> get club;

  /// Create a copy of JoinedGroups
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JoinedGroupsImplCopyWith<_$JoinedGroupsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StudyGroup _$StudyGroupFromJson(Map<String, dynamic> json) {
  return _StudyGroup.fromJson(json);
}

/// @nodoc
mixin _$StudyGroup {
  int get id => throw _privateConstructorUsedError; // 모임 ID
  String get title => throw _privateConstructorUsedError; // 모임 제목
  String get thumbnail => throw _privateConstructorUsedError; // 모임 이미지 URL
  String get description => throw _privateConstructorUsedError; // 모임 설명
  String get category =>
      throw _privateConstructorUsedError; // 카테고리 (study/club)
  @JsonKey(name: 'max_members')
  int get maxMembers => throw _privateConstructorUsedError; // 최대 인원
  @JsonKey(name: 'num_members')
  int get numMembers => throw _privateConstructorUsedError; // 현재 인원
  String get attendance => throw _privateConstructorUsedError; // 출석 방식
  String get meet => throw _privateConstructorUsedError; // 모임 방식
  String get mood => throw _privateConstructorUsedError;

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
      String thumbnail,
      String description,
      String category,
      @JsonKey(name: 'max_members') int maxMembers,
      @JsonKey(name: 'num_members') int numMembers,
      String attendance,
      String meet,
      String mood});
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
    Object? thumbnail = null,
    Object? description = null,
    Object? category = null,
    Object? maxMembers = null,
    Object? numMembers = null,
    Object? attendance = null,
    Object? meet = null,
    Object? mood = null,
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
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      maxMembers: null == maxMembers
          ? _value.maxMembers
          : maxMembers // ignore: cast_nullable_to_non_nullable
              as int,
      numMembers: null == numMembers
          ? _value.numMembers
          : numMembers // ignore: cast_nullable_to_non_nullable
              as int,
      attendance: null == attendance
          ? _value.attendance
          : attendance // ignore: cast_nullable_to_non_nullable
              as String,
      meet: null == meet
          ? _value.meet
          : meet // ignore: cast_nullable_to_non_nullable
              as String,
      mood: null == mood
          ? _value.mood
          : mood // ignore: cast_nullable_to_non_nullable
              as String,
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
      String thumbnail,
      String description,
      String category,
      @JsonKey(name: 'max_members') int maxMembers,
      @JsonKey(name: 'num_members') int numMembers,
      String attendance,
      String meet,
      String mood});
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
    Object? thumbnail = null,
    Object? description = null,
    Object? category = null,
    Object? maxMembers = null,
    Object? numMembers = null,
    Object? attendance = null,
    Object? meet = null,
    Object? mood = null,
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
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      maxMembers: null == maxMembers
          ? _value.maxMembers
          : maxMembers // ignore: cast_nullable_to_non_nullable
              as int,
      numMembers: null == numMembers
          ? _value.numMembers
          : numMembers // ignore: cast_nullable_to_non_nullable
              as int,
      attendance: null == attendance
          ? _value.attendance
          : attendance // ignore: cast_nullable_to_non_nullable
              as String,
      meet: null == meet
          ? _value.meet
          : meet // ignore: cast_nullable_to_non_nullable
              as String,
      mood: null == mood
          ? _value.mood
          : mood // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudyGroupImpl implements _StudyGroup {
  const _$StudyGroupImpl(
      {required this.id,
      required this.title,
      required this.thumbnail,
      required this.description,
      required this.category,
      @JsonKey(name: 'max_members') required this.maxMembers,
      @JsonKey(name: 'num_members') required this.numMembers,
      required this.attendance,
      required this.meet,
      required this.mood});

  factory _$StudyGroupImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudyGroupImplFromJson(json);

  @override
  final int id;
// 모임 ID
  @override
  final String title;
// 모임 제목
  @override
  final String thumbnail;
// 모임 이미지 URL
  @override
  final String description;
// 모임 설명
  @override
  final String category;
// 카테고리 (study/club)
  @override
  @JsonKey(name: 'max_members')
  final int maxMembers;
// 최대 인원
  @override
  @JsonKey(name: 'num_members')
  final int numMembers;
// 현재 인원
  @override
  final String attendance;
// 출석 방식
  @override
  final String meet;
// 모임 방식
  @override
  final String mood;

  @override
  String toString() {
    return 'StudyGroup(id: $id, title: $title, thumbnail: $thumbnail, description: $description, category: $category, maxMembers: $maxMembers, numMembers: $numMembers, attendance: $attendance, meet: $meet, mood: $mood)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudyGroupImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.maxMembers, maxMembers) ||
                other.maxMembers == maxMembers) &&
            (identical(other.numMembers, numMembers) ||
                other.numMembers == numMembers) &&
            (identical(other.attendance, attendance) ||
                other.attendance == attendance) &&
            (identical(other.meet, meet) || other.meet == meet) &&
            (identical(other.mood, mood) || other.mood == mood));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, thumbnail,
      description, category, maxMembers, numMembers, attendance, meet, mood);

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
      required final String thumbnail,
      required final String description,
      required final String category,
      @JsonKey(name: 'max_members') required final int maxMembers,
      @JsonKey(name: 'num_members') required final int numMembers,
      required final String attendance,
      required final String meet,
      required final String mood}) = _$StudyGroupImpl;

  factory _StudyGroup.fromJson(Map<String, dynamic> json) =
      _$StudyGroupImpl.fromJson;

  @override
  int get id; // 모임 ID
  @override
  String get title; // 모임 제목
  @override
  String get thumbnail; // 모임 이미지 URL
  @override
  String get description; // 모임 설명
  @override
  String get category; // 카테고리 (study/club)
  @override
  @JsonKey(name: 'max_members')
  int get maxMembers; // 최대 인원
  @override
  @JsonKey(name: 'num_members')
  int get numMembers; // 현재 인원
  @override
  String get attendance; // 출석 방식
  @override
  String get meet; // 모임 방식
  @override
  String get mood;

  /// Create a copy of StudyGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudyGroupImplCopyWith<_$StudyGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
