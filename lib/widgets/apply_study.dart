import 'package:flutter/material.dart';
import 'package:team_3_frontend/data/models/study_group.dart';
import 'package:team_3_frontend/theme/app_colors.dart';
import 'package:team_3_frontend/theme/app_typography.dart';
import 'package:team_3_frontend/widgets/box.dart';

class StudyDetailDialog extends StatelessWidget {
  final StudyGroup study;

  const StudyDetailDialog({super.key, required this.study});

  @override
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      backgroundColor: AppColors.box2,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 24), // 아이콘과 겹치지 않게 여백
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      study.thumbnail,
                      height: 160,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: Text(study.title, style: AppTypography.t3SB16),
                      ),
                      Row(
                        children: [
                          const Icon(Icons.person, size: 16),
                          const SizedBox(width: 4),
                          Text('${study.numMembers}/${study.maxMembers}', style: AppTypography.b3R12),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(study.description, style: AppTypography.b1R14),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    runSpacing: 4,
                    children: [
                      _buildApproveTag(study.approve),
                      _buildTag(_getAttendanceTypeText(study.attendance)),
                      _buildTag(_getMeetTypeText(study.meet)),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text('모임 소개', style: AppTypography.b6SB14),
                  const SizedBox(height: 6),
                  Text(
                    study.goal.isNotEmpty ? study.goal : study.memo,
                    style: AppTypography.b3R12.copyWith(height: 1.4),
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.point,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        '참여 신청 보내기',
                        style: AppTypography.t3SB16.copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 10,
            right: 10,
            child: GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: const Icon(Icons.close, color: AppColors.grayscale50, size: 30),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildApproveTag(bool approve) {
    final label = approve ? '승인 참여' : '자유 참여';

    return Box(
      fillColor: AppColors.point,
      strokeColor: AppColors.point,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
        child: Text(
          label,
          style: AppTypography.b3R12.copyWith(color: AppColors.grayscale0),
        ),
      ),
    );
  }

  Widget _buildTag(String label) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.box1,
        border: Border.all(color: AppColors.box1Border),
        borderRadius: BorderRadius.circular(20), // ← 둥글게!
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      child: Text(
        label,
        style: AppTypography.b3R12.copyWith(color: AppColors.point),
      ),
    );
  }

  String _getParticipationTypeText(bool approve) {
    return approve ? '승인 참여' : '자유 참여';
  }

  String _getAttendanceTypeText(AttendanceType type) {
    switch (type) {
      case AttendanceType.every:
        return '매일 출석';
      case AttendanceType.free:
        return '자율 출석';
      case AttendanceType.TBD:
      default:
        return '모임 내 협의';
    }
  }

  String _getMeetTypeText(MeetType type) {
    switch (type) {
      case MeetType.online:
        return '온라인';
      case MeetType.offline:
        return '오프라인';
      case MeetType.both:
      default:
        return '모임 내 협의';
    }
  }
}

void showStudyDetailDialog(BuildContext context, StudyGroup study) {
  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (_) => StudyDetailDialog(study: study),
  );
}