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
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 14),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                // 몇 시간 후
                Text(
                  '$hoursLeft시간 후',
                  style: AppTypography.t4SB12.copyWith(
                    color: Color(0xFFFF4040),
                  ),
                ),
                const SizedBox(height: 4),
                // 모임 이름
                Text(
                  meetingName,
                  style: AppTypography.t3SB16,
                ),
                const SizedBox(height: 15),
                // 일시
                Text(
                  '일시: $time',
                  style: AppTypography.b0L12
                      .copyWith(color: AppColors.grayscale100),
                ),
                const SizedBox(height: 4),
                // 장소
                Text(
                  '장소: $location',
                  style: AppTypography.b0L12
                      .copyWith(color: AppColors.grayscale100),
                ),
              ],
            ),
            Assets.icons.upcomingScheduleArrow.svg(height: 20),
          ],
        ),
      ),
    );
  }
}
