import 'package:flutter/material.dart';
import 'package:team_3_frontend/theme/app_colors.dart';
import 'package:team_3_frontend/theme/app_typography.dart';
import '../gen/assets.gen.dart';
import './box.dart';

class UpcomingScheduleBox extends StatelessWidget {
  final String hoursLeft;
  final String meetingName;
  final String time;
  final String location;

  const UpcomingScheduleBox({
    super.key,
    required this.hoursLeft,
    required this.meetingName,
    required this.time,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Box(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // 왼쪽 정보
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '$hoursLeft시간 후',
                  style: AppTypography.t4SB12.copyWith(
                    color: const Color(0xFFFF4040),
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  meetingName,
                  style: AppTypography.t3SB16,
                ),
                const SizedBox(height: 8),
                Text(
                  '일시: $time',
                  style: AppTypography.b0L12.copyWith(
                    color: AppColors.grayscale100,
                  ),
                ),
                Text(
                  '장소: $location',
                  style: AppTypography.b0L12.copyWith(
                    color: AppColors.grayscale100,
                  ),
                ),
              ],
            ),

            // 오른쪽 아이콘
            Assets.icons.upcomingScheduleArrow.svg(height: 20),
          ],
        ),
      ),
    );
  }
}