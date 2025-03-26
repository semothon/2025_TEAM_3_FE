import 'package:flutter/material.dart';
import 'package:team_3_frontend/theme/app_colors.dart';
import 'package:team_3_frontend/theme/app_typography.dart';
import 'box.dart';

class MyStudyBox extends StatelessWidget {
  final String title;
  final String subtitle;
  final String memberCount;
  final VoidCallback onJoinPressed;
  final VoidCallback onAttendancePressed;
  final VoidCallback onReportPressed;

  const MyStudyBox({
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
        color: const Color(0xFFFFF8F8), // Fill 색상
        border: Border.all(
          color: AppColors.box1, // Stroke 색상 (#FFBDDB)
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            // 왼쪽 이미지 (카메라 아이콘)
            Container(
              width: 82, // OtherStudyBox와 동일하게 변경
              height: 82,
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
                    style: AppTypography.t3SB16, // OtherStudyBox와 동일
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: AppTypography.b0L12.copyWith(
                        color: AppColors.grayscale100), // OtherStudyBox와 동일
                  ),
                  const SizedBox(height: 8), // OtherStudyBox와 동일
                  Row(
                    children: [
                      Box(
                        fillColor: AppColors.point,
                        strokeColor: AppColors.point,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 4),
                          child: Text(
                            '승인 참여',
                            style: AppTypography.b3R12.copyWith(
                              color: AppColors.grayscale0,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Box(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 4),
                          child: Text(
                            '자율 출석',
                            style: AppTypography.b3R12.copyWith(
                              color: AppColors.point,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // 오른쪽 멤버 수 및 더보기 아이콘
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
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
          ],
        ),
      ),
    );
  }
}
