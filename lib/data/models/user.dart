import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required int id, // 사용자 ID
    required String email, // 이메일
    required String password, // 비밀번호 (암호화)
    @JsonKey(name: 'login_id') required String loginId, // 로그인 ID
    required String name, // 사용자 이름 (추가)
    required String department, // 학과
    @JsonKey(name: 'profile_img') String? profileImg, // 프로필 이미지 URL (nullable)
    @Default({}) Map<String, dynamic> interest, // 관심사 (JSON)
    @Default({}) Map<String, dynamic> hobby, // 취미 (JSON)
    @Default({}) Map<String, dynamic> timetable, // 시간표 (JSON)
    @JsonKey(name: 'created_at') required DateTime createdAt, // 가입 일시
    @JsonKey(name: 'updated_at') DateTime? updatedAt, // 수정 일시 (nullable)
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
