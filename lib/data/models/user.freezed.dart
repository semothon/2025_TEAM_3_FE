// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  int get id => throw _privateConstructorUsedError; // 사용자 ID
  String? get email => throw _privateConstructorUsedError; // 이메일
  String? get password => throw _privateConstructorUsedError; // 비밀번호 (암호화)
  @JsonKey(name: 'login_id')
  String? get loginId => throw _privateConstructorUsedError; // 로그인 ID
  String get name => throw _privateConstructorUsedError; // 사용자 이름 (추가)
  String get department => throw _privateConstructorUsedError; // 학과
  @JsonKey(name: 'profile_img')
  String? get profileImg =>
      throw _privateConstructorUsedError; // 프로필 이미지 URL (nullable)
  Map<String, dynamic> get interest =>
      throw _privateConstructorUsedError; // 관심사 (JSON)
  Map<String, dynamic> get hobby =>
      throw _privateConstructorUsedError; // 취미 (JSON)
  List<dynamic> get timetable =>
      throw _privateConstructorUsedError; // 시간표 (JSON)
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError; // 가입 일시
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {int id,
      String? email,
      String? password,
      @JsonKey(name: 'login_id') String? loginId,
      String name,
      String department,
      @JsonKey(name: 'profile_img') String? profileImg,
      Map<String, dynamic> interest,
      Map<String, dynamic> hobby,
      List<dynamic> timetable,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = freezed,
    Object? password = freezed,
    Object? loginId = freezed,
    Object? name = null,
    Object? department = null,
    Object? profileImg = freezed,
    Object? interest = null,
    Object? hobby = null,
    Object? timetable = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      loginId: freezed == loginId
          ? _value.loginId
          : loginId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      department: null == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String,
      profileImg: freezed == profileImg
          ? _value.profileImg
          : profileImg // ignore: cast_nullable_to_non_nullable
              as String?,
      interest: null == interest
          ? _value.interest
          : interest // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      hobby: null == hobby
          ? _value.hobby
          : hobby // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      timetable: null == timetable
          ? _value.timetable
          : timetable // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? email,
      String? password,
      @JsonKey(name: 'login_id') String? loginId,
      String name,
      String department,
      @JsonKey(name: 'profile_img') String? profileImg,
      Map<String, dynamic> interest,
      Map<String, dynamic> hobby,
      List<dynamic> timetable,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = freezed,
    Object? password = freezed,
    Object? loginId = freezed,
    Object? name = null,
    Object? department = null,
    Object? profileImg = freezed,
    Object? interest = null,
    Object? hobby = null,
    Object? timetable = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$UserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      loginId: freezed == loginId
          ? _value.loginId
          : loginId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      department: null == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String,
      profileImg: freezed == profileImg
          ? _value.profileImg
          : profileImg // ignore: cast_nullable_to_non_nullable
              as String?,
      interest: null == interest
          ? _value._interest
          : interest // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      hobby: null == hobby
          ? _value._hobby
          : hobby // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      timetable: null == timetable
          ? _value._timetable
          : timetable // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl(
      {required this.id,
      this.email,
      this.password,
      @JsonKey(name: 'login_id') this.loginId,
      required this.name,
      required this.department,
      @JsonKey(name: 'profile_img') this.profileImg,
      final Map<String, dynamic> interest = const {},
      final Map<String, dynamic> hobby = const {},
      final List<dynamic> timetable = const [],
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt})
      : _interest = interest,
        _hobby = hobby,
        _timetable = timetable;

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final int id;
// 사용자 ID
  @override
  final String? email;
// 이메일
  @override
  final String? password;
// 비밀번호 (암호화)
  @override
  @JsonKey(name: 'login_id')
  final String? loginId;
// 로그인 ID
  @override
  final String name;
// 사용자 이름 (추가)
  @override
  final String department;
// 학과
  @override
  @JsonKey(name: 'profile_img')
  final String? profileImg;
// 프로필 이미지 URL (nullable)
  final Map<String, dynamic> _interest;
// 프로필 이미지 URL (nullable)
  @override
  @JsonKey()
  Map<String, dynamic> get interest {
    if (_interest is EqualUnmodifiableMapView) return _interest;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_interest);
  }

// 관심사 (JSON)
  final Map<String, dynamic> _hobby;
// 관심사 (JSON)
  @override
  @JsonKey()
  Map<String, dynamic> get hobby {
    if (_hobby is EqualUnmodifiableMapView) return _hobby;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_hobby);
  }

// 취미 (JSON)
  final List<dynamic> _timetable;
// 취미 (JSON)
  @override
  @JsonKey()
  List<dynamic> get timetable {
    if (_timetable is EqualUnmodifiableListView) return _timetable;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_timetable);
  }

// 시간표 (JSON)
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
// 가입 일시
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'User(id: $id, email: $email, password: $password, loginId: $loginId, name: $name, department: $department, profileImg: $profileImg, interest: $interest, hobby: $hobby, timetable: $timetable, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.loginId, loginId) || other.loginId == loginId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.profileImg, profileImg) ||
                other.profileImg == profileImg) &&
            const DeepCollectionEquality().equals(other._interest, _interest) &&
            const DeepCollectionEquality().equals(other._hobby, _hobby) &&
            const DeepCollectionEquality()
                .equals(other._timetable, _timetable) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      email,
      password,
      loginId,
      name,
      department,
      profileImg,
      const DeepCollectionEquality().hash(_interest),
      const DeepCollectionEquality().hash(_hobby),
      const DeepCollectionEquality().hash(_timetable),
      createdAt,
      updatedAt);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {required final int id,
      final String? email,
      final String? password,
      @JsonKey(name: 'login_id') final String? loginId,
      required final String name,
      required final String department,
      @JsonKey(name: 'profile_img') final String? profileImg,
      final Map<String, dynamic> interest,
      final Map<String, dynamic> hobby,
      final List<dynamic> timetable,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  int get id; // 사용자 ID
  @override
  String? get email; // 이메일
  @override
  String? get password; // 비밀번호 (암호화)
  @override
  @JsonKey(name: 'login_id')
  String? get loginId; // 로그인 ID
  @override
  String get name; // 사용자 이름 (추가)
  @override
  String get department; // 학과
  @override
  @JsonKey(name: 'profile_img')
  String? get profileImg; // 프로필 이미지 URL (nullable)
  @override
  Map<String, dynamic> get interest; // 관심사 (JSON)
  @override
  Map<String, dynamic> get hobby; // 취미 (JSON)
  @override
  List<dynamic> get timetable; // 시간표 (JSON)
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt; // 가입 일시
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
