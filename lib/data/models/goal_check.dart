import 'package:freezed_annotation/freezed_annotation.dart';

part 'goal_check.freezed.dart';
part 'goal_check.g.dart';

enum CheckStatus { done, pending }

@freezed
class GoalCheck with _$GoalCheck {
  const factory GoalCheck({
    required int id, // ID
    @JsonKey(name: 'goal_id') required int goalId, // 목표 ID
    @JsonKey(name: 'user_id') required int userId, // 인증한 사용자 ID
    @JsonKey(fromJson: _checkStatusFromJson, toJson: _checkStatusToJson)
    required CheckStatus status, // 인증 상태
    @JsonKey(name: 'proof_img') String? proofImg, // 인증 이미지 URL (nullable)
    @JsonKey(name: 'created_at') required DateTime createdAt, // 인증 일시
  }) = _GoalCheck;

  factory GoalCheck.fromJson(Map<String, dynamic> json) =>
      _$GoalCheckFromJson(json);
}

// Enum 변환 함수
CheckStatus _checkStatusFromJson(String status) =>
    CheckStatus.values.firstWhere(
      (e) => e.toString().split('.').last == status,
      orElse: () => CheckStatus.pending, // 기본값
    );

String _checkStatusToJson(CheckStatus status) =>
    status.toString().split('.').last;
