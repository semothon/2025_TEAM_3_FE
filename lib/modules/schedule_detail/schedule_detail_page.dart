import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team_3_frontend/data/models/home.dart';
import 'package:team_3_frontend/theme/app_colors.dart';
import 'package:team_3_frontend/theme/app_typography.dart';

class ScheduleDetailPage extends StatelessWidget {
  const ScheduleDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final UpcomingSchedule schedule = Get.arguments;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 상단 타이틀 영역
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () => Get.back(),
                    ),
                    Text('다가오는 일정', style: AppTypography.t3SB16),
                    const SizedBox(width: 24), // 오른쪽 아이콘 자리 확보용
                  ],
                ),
                const SizedBox(height: 16),

                // "X시간 후" 라벨
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(255, 64, 64, 1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      '${(schedule.secondsLeft / 3600).floor()}시간 후',
                      style: AppTypography.b3R12.copyWith(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                // 제목
                Text(schedule.title, style: AppTypography.t0B24),

                const SizedBox(height: 16),
                Divider(),

                // 일시
                const SizedBox(height: 8),
                Text(
                  '일시',
                  style: AppTypography.t4SB12
                      .copyWith(color: AppColors.grayscale100),
                ),
                const SizedBox(height: 4),
                Text(
                  '${schedule.startDatetime.year}/${schedule.startDatetime.month.toString().padLeft(2, '0')}/${schedule.startDatetime.day.toString().padLeft(2, '0')}, ${schedule.startDatetime.hour.toString().padLeft(2, '0')}:${schedule.startDatetime.minute.toString().padLeft(2, '0')}',
                  style: AppTypography.b1R14,
                ),

                const SizedBox(height: 16),

                // 장소
                Text(
                  '장소',
                  style: AppTypography.t4SB12
                      .copyWith(color: AppColors.grayscale100),
                ),
                const SizedBox(height: 4),
                Text(schedule.location, style: AppTypography.b1R14),
                const SizedBox(height: 12),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 14,
                      child: Text('N',
                          style: AppTypography.b1R14
                              .copyWith(color: Colors.white, fontWeight: FontWeight.w900)),
                    ),
                    const SizedBox(width: 8),
                    CircleAvatar(
                      backgroundColor: Colors.yellow,
                      radius: 14,
                      child: Icon(Icons.place, size: 16, color: Colors.white),
                    ),
                  ],
                ),
                const SizedBox(height: 24),

                // 일정 설명
                Text(
                  '일정',
                  style: AppTypography.t4SB12
                      .copyWith(color: AppColors.grayscale100),
                ),
                const SizedBox(height: 4),
                Text(
                  schedule.memo,
                  style: AppTypography.b1R14,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
