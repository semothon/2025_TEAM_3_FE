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
    return Scaffold(
      appBar: _buildAppBar(),
      body: Stack(
        children: [
          // Show loading indicator if home is null, otherwise show content
          Obx(() => controller.home.value == null
              ? const Center(child: CircularProgressIndicator())
              : CustomScrollView(
                  slivers: [
                    // 1. 사용자 인사 및 일정 요약
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Obx(() => RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text:
                                            '${controller.home.value!.name}님, 오늘은 ',
                                        style: AppTypography.t1B20,
                                      ),
                                      TextSpan(
                                        text:
                                            '${controller.todayScheduleCount}개의 일정',
                                        style: AppTypography.t1B20
                                            .copyWith(color: AppColors.point),
                                      ),
                                      TextSpan(
                                        text: '이 있어요!',
                                        style: AppTypography.t1B20,
                                      ),
                                    ],
                                  ),
                                )),
                            const SizedBox(height: 4),
                            Obx(() => Text(
                                  controller.todayScheduleNames,
                                  style: AppTypography.b1R14
                                      .copyWith(color: AppColors.grayscale100),
                                )),
                          ],
                        ),
                      ),
                    ),

                    // 2. 다가오는 일정
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
                            Obx(() => SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: controller.schedules
                                        .asMap()
                                        .entries
                                        .map((entry) {
                                      final schedule = entry.value;
                                      return Container(
                                        width: 300,
                                        margin: entry.key <
                                                controller.schedules.length - 1
                                            ? const EdgeInsets.only(right: 12)
                                            : EdgeInsets.zero,
                                        child: UpcomingScheduleBox(
                                          hoursLeft: (schedule.secondsLeft ~/
                                                  3600)
                                              .toString(), // Convert seconds to hours
                                          meetingName: schedule.title,
                                          time: schedule.startDatetime
                                              .toLocal()
                                              .toString()
                                              .substring(
                                                  11, 16), // HH:MM format
                                          location: schedule.location,
                                        ),
                                      );
                                    }).toList(),
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ),

                    // 3. 참여 중인 모임 탭 (스터디 / 소모임)
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '참여 중인 모임',
                              style: AppTypography.b5M14
                                  .copyWith(color: AppColors.grayscale100),
                            ),
                            const SizedBox(height: 12),
                            Row(
                              children: [
                                _buildCategoryTab('스터디', 'study'),
                                const SizedBox(width: 8),
                                _buildCategoryTab('소모임', 'club'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                    // 4. 스터디/소모임 리스트
                    Obx(() => SliverList(
                          delegate: SliverChildBuilderDelegate(
                            (context, index) {
                              final group = controller.filteredGroups[index];
                              final memberCount = controller.studyMembers
                                  .where((member) => member.groupId == group.id)
                                  .length;
                              final maxMembers = group.maxMembers;
                              final isMyStudy = controller.studyMembers.any(
                                (member) =>
                                    member.groupId == group.id &&
                                    member.userId ==
                                        1 && // Hardcoded for now; replace with actual user ID
                                    member.role == MemberRole.leader,
                              );

                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                child: Column(
                                  children: [
                                    isMyStudy
                                        ? MyStudyBox(
                                            title: group.title,
                                            subtitle: group.description,
                                            memberCount:
                                                '$memberCount/$maxMembers',
                                            thumbnail:
                                                '', // No thumbnail in new model; use placeholder or remove
                                            onPressed: () => Get.toNamed(
                                              Routes.studyDetail,
                                              arguments: group.id,
                                            ),
                                          )
                                        : OtherStudyBox(
                                            title: group.title,
                                            subtitle: group.description,
                                            memberCount:
                                                '$memberCount/$maxMembers',
                                            thumbnail:
                                                '', // No thumbnail in new model; use placeholder or remove
                                            onPressed: () => Get.toNamed(
                                              Routes.studyDetail,
                                              arguments: group.id,
                                            ),
                                          ),
                                    const SizedBox(height: 12),
                                  ],
                                ),
                              );
                            },
                            childCount: controller.filteredGroups.length,
                          ),
                        )),
                  ],
                )),
        ],
      ),
    );
  }

  // 카테고리 탭 버튼 위젯
  Widget _buildCategoryTab(String label, String value) {
    return GestureDetector(
      onTap: () => controller.setCategory(value),
      child: Obx(() {
        final isSelected = controller.selectedCategory.value == value;
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
          decoration: BoxDecoration(
            color: isSelected ? AppColors.point : AppColors.grayscale0,
            border: Border.all(
              color: isSelected ? AppColors.point : AppColors.grayscale50,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            label,
            style: AppTypography.b6SB14.copyWith(
              color: isSelected ? AppColors.grayscale0 : AppColors.grayscale100,
            ),
          ),
        );
      }),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      backgroundColor: AppColors.background,
      elevation: 0,
      automaticallyImplyLeading: false,
      titleSpacing: 20,
      title: Row(
        children: [
          Assets.icons.logo.svg(height: 50),
          const Spacer(),
          IconButton(
            icon: Assets.icons.notification.svg(height: 24),
            onPressed: () {
              // 알림 기능 (추후 구현)
            },
          ),
        ],
      ),
    );
  }
}
