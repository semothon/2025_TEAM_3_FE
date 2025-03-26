import 'package:freezed_annotation/freezed_annotation.dart';

part 'study_member.freezed.dart';
part 'study_member.g.dart';

enum MemberRole { leader, member }

@freezed
class StudyMember with _$StudyMember {
  const factory StudyMember({
    required int id, // 고유 ID
    @JsonKey(name: 'user_id') required int userId, // 사용자 ID
    @JsonKey(name: 'group_id') required int groupId, // 모임 ID
    @JsonKey(fromJson: _memberRoleFromJson, toJson: _memberRoleToJson)
    required MemberRole role, // 역할
    @JsonKey(name: 'joined_at') required DateTime joinedAt, // 참여 일시
  }) = _StudyMember;

  factory StudyMember.fromJson(Map<String, dynamic> json) =>
      _$StudyMemberFromJson(json);
}

// Enum 변환 함수
MemberRole _memberRoleFromJson(String role) => MemberRole.values.firstWhere(
      (e) => e.toString().split('.').last == role,
      orElse: () => MemberRole.member,
    );

String _memberRoleToJson(MemberRole role) => role.toString().split('.').last;
