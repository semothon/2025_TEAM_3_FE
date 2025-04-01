import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team_3_frontend/theme/app_colors.dart';
import 'package:team_3_frontend/theme/app_typography.dart';
import 'package:team_3_frontend/widgets/my_study_box.dart';
import '../../data/models/study_member.dart';
import '../../gen/assets.gen.dart';
import '../../routes/app_routes.dart';
import '../../widgets/other_study_box.dart';
import '../../widgets/upcoming_schedule_box.dart';
import './home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // HomeController 인스턴스 확인
    Get.put(HomeController());

    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Assets.icons.logo.svg(height: 48),
        ),
        leadingWidth: 64,
        actions: [
          Assets.icons.notification.svg(height: 24),
          const SizedBox(width: 16),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          // OO님, 오늘은 O개의 일정이 있어요!
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '${controller.user.name}님, 오늘은 ',
                          style: AppTypography.t1B20,
                        ),
                        TextSpan(
                          text: '${controller.todayScheduleCount}개의 일정',
                          style: AppTypography.t1B20
                              .copyWith(color: AppColors.point),
                        ),
                        TextSpan(
                          text: '이 있어요!',
                          style: AppTypography.t1B20,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    controller.todayScheduleNames,
                    style: AppTypography.b1R14
                        .copyWith(color: AppColors.grayscale100),
                  ),
                ],
              ),
            ),
          ),
          // 다가오는 일정
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '다가오는 일정',
                    style: AppTypography.b5M14
                        .copyWith(color: AppColors.grayscale100),
                  ),
                  const SizedBox(height: 12),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children:
                          controller.schedules.asMap().entries.map((entry) {
                        final schedule = entry.value;
                        return Container(
                          width: 300,
                          margin: entry.key < controller.schedules.length - 1
                              ? const EdgeInsets.only(right: 12)
                              : EdgeInsets.zero, // 마지막 카드에는 마진 없음
                          child: UpcomingScheduleBox(
                            hoursLeft: schedule['hoursLeft']!,
                            meetingName: schedule['meetingName']!,
                            time: schedule['time']!,
                            location: schedule['location']!,
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // 참여 중인 모임
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '참여 중인 모임',
                    style: AppTypography.b5M14
                        .copyWith(color: AppColors.grayscale100),
                  ),
                  const SizedBox(height: 12),
                  Obx(
                    () => Row(
                      children: [
                        // 스터디 탭
                        GestureDetector(
                          onTap: () {
                            controller.setCategory('study');
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 6,
                            ),
                            decoration: BoxDecoration(
                              color:
                                  controller.selectedCategory.value == 'study'
                                      ? AppColors.point
                                      : AppColors.grayscale0,
                              border: Border.all(
                                color:
                                    controller.selectedCategory.value == 'study'
                                        ? AppColors.point
                                        : AppColors.grayscale50,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              '스터디',
                              style: AppTypography.b6SB14.copyWith(
                                color:
                                    controller.selectedCategory.value == 'study'
                                        ? AppColors.grayscale0
                                        : AppColors.grayscale100,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        // 소모임 탭
                        GestureDetector(
                          onTap: () {
                            controller.setCategory('club');
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 6,
                            ),
                            decoration: BoxDecoration(
                              color: controller.selectedCategory.value == 'club'
                                  ? AppColors.point
                                  : AppColors.grayscale0,
                              border: Border.all(
                                color:
                                    controller.selectedCategory.value == 'club'
                                        ? AppColors.point
                                        : AppColors.grayscale50,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              '소모임',
                              style: AppTypography.b6SB14.copyWith(
                                color:
                                    controller.selectedCategory.value == 'club'
                                        ? AppColors.grayscale0
                                        : AppColors.grayscale100,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // 세로 스크롤 리스트
          Obx(
            () => SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final group = controller.filteredGroups[index];
                  final memberCount = controller.studyMembers
                      .where((member) => member.groupId == group.id)
                      .length;
                  final maxMembers = group.maxMembers;
                  final isMyStudy = controller.studyMembers.any((member) =>
                      member.groupId == group.id &&
                      member.userId == controller.user.id &&
                      member.role == MemberRole.leader);

                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        isMyStudy
                            ? MyStudyBox(
                                title: group.title,
                                subtitle: group.description,
                                memberCount: '$memberCount/$maxMembers',
                                thumbnail: group.thumbnail,
                                onPressed: () => Get.toNamed(
                                  Routes.studyDetail,
                                  arguments: group,
                                ),
                              )
                            : OtherStudyBox(
                                title: group.title,
                                subtitle: group.description,
                                memberCount: '$memberCount/$maxMembers',
                                thumbnail: group.thumbnail,
                                onPressed: () => Get.toNamed(Routes.studyDetail,
                                    arguments: group),
                              ),
                        const SizedBox(height: 12),
                      ],
                    ),
                  );
                },
                childCount: controller.filteredGroups.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
