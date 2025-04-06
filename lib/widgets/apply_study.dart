import 'package:flutter/material.dart';
import 'package:team_3_frontend/theme/app_colors.dart';
import 'package:team_3_frontend/theme/app_typography.dart';
import 'package:team_3_frontend/widgets/box.dart';

class StudyDetailDialog extends StatefulWidget {
  final Map<String, dynamic> study;

  const StudyDetailDialog({super.key, required this.study});

  @override
  State<StudyDetailDialog> createState() => _StudyDetailDialogState();
}

class _StudyDetailDialogState extends State<StudyDetailDialog> {
  bool isRequested = false;

  @override
  Widget build(BuildContext context) {
    final String title = widget.study['title'] ?? '';
    final String description = widget.study['description'] ?? '';
    final String thumbnail = widget.study['thumbnail'] ?? '';
    final int numMembers = widget.study['num_members'] ?? 0;
    final int maxMembers = widget.study['max_members'] ?? 0;
    final String goal = widget.study['goal'] ?? '';
    final String memo = widget.study['memo'] ?? '';
    final String attendance = widget.study['attendance'] ?? '';
    final String meet = widget.study['meet'] ?? '';
    final bool approve = widget.study['approve'] ?? false;

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
                  const SizedBox(height: 24),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      thumbnail,
                      height: 160,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      errorBuilder: (_, __, ___) => Container(
                        height: 160,
                        width: double.infinity,
                        color: AppColors.grayscale25,
                        child: const Icon(Icons.image_not_supported),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Text(title, style: AppTypography.t1B20),
                      const SizedBox(width: 8),
                      Row(
                        children: [
                          const Icon(Icons.person, size: 14, color: AppColors.grayscale100),
                          const SizedBox(width: 4),
                          Text(
                            '$numMembers/$maxMembers',
                            style: AppTypography.b4R10.copyWith(
                              color: AppColors.grayscale100,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Text(
                    description,
                    style: AppTypography.b0L12.copyWith(
                      color: AppColors.grayscale100,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    runSpacing: 4,
                    children: [
                      _buildApproveTag(approve),
                      _buildTag(_getAttendanceText(attendance)),
                      _buildTag(_getMeetText(meet)),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    '모임 소개',
                    style: AppTypography.t4SB12.copyWith(
                      color: AppColors.grayscale100,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    goal.isNotEmpty ? goal : (memo ?? ''),
                    style: AppTypography.b3R12.copyWith(height: 1.4),
                  ),
                  const SizedBox(height: 24),

                  // ✅ 참여 신청 버튼
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        if (isRequested) return;
                        setState(() {
                          isRequested = true;
                        });
                        // 참여 신청 로직 추가
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: isRequested
                            ? AppColors.grayscale50
                            : AppColors.point,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Text(
                        isRequested ? '신청 완료' : '참여 신청 보내기',
                        style: AppTypography.t3SB16.copyWith(
                          color: isRequested ? Colors.black : Colors.white,
                        ),
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
              child: const Icon(Icons.close,
                  color: AppColors.grayscale50, size: 30),
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
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
        child: Text(
          label,
          style: AppTypography.b3R12.copyWith(color: AppColors.grayscale0, fontSize: 13),
        ),
      ),
    );
  }

  Widget _buildTag(String label) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.box1,
        border: Border.all(color: AppColors.box1Border),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      child: Text(
        label,
        style: AppTypography.b3R12.copyWith(color: AppColors.point, fontSize: 13),
      ),
    );
  }

  String _getAttendanceText(String value) {
    switch (value) {
      case 'every':
        return '매일 출석';
      case 'free':
        return '자율 출석';
      case 'TBD':
      default:
        return '모임 내 협의';
    }
  }

  String _getMeetText(String value) {
    switch (value) {
      case 'online':
        return '온라인';
      case 'offline':
        return '오프라인';
      case 'both':
      default:
        return '모임 내 협의';
    }
  }
}
void showStudyDetailDialog(BuildContext context, Map<String, dynamic> study) {
  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (_) => StudyDetailDialog(study: study),
  );
}
