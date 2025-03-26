import 'package:flutter/material.dart';
import 'package:team_3_frontend/theme/app_colors.dart';
import 'package:team_3_frontend/theme/app_typography.dart';

class OtherStudyBox extends StatelessWidget {
  final String title;
  final String subtitle;
  final String memberCount;
  final VoidCallback onJoinPressed;
  final VoidCallback onAttendancePressed;
  final VoidCallback onReportPressed;

  const OtherStudyBox({
    super.key,
    required this.title,
    required this.subtitle,
    required this.memberCount,
    required this.onJoinPressed,
    required this.onAttendancePressed,
    required this.onReportPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        border: Border.all(
          color: AppColors.box2Border,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 왼쪽 이미지 (카메라 아이콘을 대체하면 됨)
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: AppColors.grayscale0,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                Icons.camera_alt,
                color: AppColors.grayscale50,
                size: 24,
              ),
            ),
            const SizedBox(width: 12),
            // 중앙 텍스트 및 버튼
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AppTypography.t0B24,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: AppTypography.b1R14,
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      // 승인 참여 버튼
                      ElevatedButton(
                        onPressed: onJoinPressed,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.point,
                          foregroundColor: AppColors.grayscale0,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 8,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(
                          '승인 참여',
                          style: AppTypography.b6SB14.copyWith(
                            color: AppColors.grayscale0,
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      // 자율 출석 버튼
                      OutlinedButton(
                        onPressed: onAttendancePressed,
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: AppColors.box1),
                          backgroundColor: AppColors.grayscale0,
                          foregroundColor: AppColors.grayscale100,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 8,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(
                          '자율 출석',
                          style: AppTypography.b6SB14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // 오른쪽 멤버 수 및 신고 버튼
            Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.person,
                      size: 16,
                      color: AppColors.grayscale100,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      memberCount,
                      style: AppTypography.b3R12,
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                TextButton(
                  onPressed: onReportPressed,
                  child: Text(
                    '신고',
                    style: AppTypography.b3R12,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
