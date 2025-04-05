import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team_3_frontend/data/models/home.dart';
import 'package:team_3_frontend/gen/assets.gen.dart';
import 'package:team_3_frontend/modules/study_detail/study_detail_controller.dart';
import 'package:team_3_frontend/theme/app_colors.dart';
import '../../data/models/group_detail.dart';
import '../../routes/app_routes.dart';
import '../../theme/app_typography.dart';
import '../../widgets/box.dart';
import 'package:intl/intl.dart';

import '../community/chat/chat_page.dart';

class StudyDetailPage extends GetView<StudyDetailController> {
  const StudyDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text(
              controller.groupDetail.value?.group.title ?? '로딩 중...',
              style: AppTypography.t3SB16,
            )),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Get.back(),
        ),
        actions: [
          GestureDetector(
            onTap: () => Get.to(ChatPage()),
            child: Assets.icons.studyDetailChat.svg(width: 24),
          ),
          const SizedBox(width: 16),
        ],
        bottom: TabBar(
          controller: controller.tabController,
          tabs: [
            Tab(text: '정보'),
            Tab(text: '공유 기록'),
            Tab(text: '개인 기록'),
          ],
          labelColor: AppColors.point,
          unselectedLabelColor: AppColors.grayscale75,
          indicatorColor: AppColors.point,
          indicatorWeight: 3,
        ),
      ),
      body: Obx(
        () => controller.groupDetail.value == null
            ? Center(child: CircularProgressIndicator())
            : TabBarView(
                controller: controller.tabController,
                children: [
                  _buildInfoTab(),
                  _buildSharedRecordsTab(),
                  _buildPersonalRecordsTab(),
                ],
              ),
      ),
      floatingActionButton: Obx(() => (controller.currentTabIndex.value == 1 ||
              controller.currentTabIndex.value == 2)
          ? FloatingActionButton(
              onPressed: () async {
                await Get.toNamed(Routes.recordCreate,
                    arguments: controller.studyId);
                // ✅ 돌아오고 나서 실행할 함수
                controller.fetchGroupDetails(); // 예시로 새로고침 함수
              },
              child: Icon(
                Icons.edit,
                color: AppColors.grayscale0,
              ),
              backgroundColor: AppColors.point,
              elevation: 0,
              shape: CircleBorder(),
            )
          : SizedBox.shrink()),
    );
  }

  // 정보 탭 UI
  Widget _buildInfoTab() {
    final group = controller.groupDetail.value!.group;

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 썸네일 이미지
            Container(
              height: 108,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: NetworkImage(group.thumbnail.isEmpty
                      ? 'https://via.placeholder.com/150'
                      : group.thumbnail),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            // 그룹 제목 및 멤버 수
            Row(
              children: [
                Text(
                  group.title,
                  style: AppTypography.t0B24,
                ),
                const SizedBox(width: 18),
                const Icon(
                  Icons.person,
                  size: 16,
                  color: AppColors.grayscale100,
                ),
                const SizedBox(width: 4),
                Text(
                  '${group.numMembers}/${group.maxMembers}',
                  style: AppTypography.b3R12.copyWith(
                    color: AppColors.grayscale75,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            // 모임 방식 및 출석 방식 태그
            Row(
              children: [
                _buildTag(group.meet),
                const SizedBox(width: 8),
                _buildTag(group.attendance),
              ],
            ),
            const SizedBox(height: 20),
            // 한줄 소개
            Text(
              '한줄 소개',
              style: AppTypography.t4SB12.copyWith(
                color: AppColors.grayscale100,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              group.onelineDescription ?? '', // Hardcoded as per screenshot
              style: AppTypography.b1R14,
            ),
            const SizedBox(height: 20),
            if (controller.schedules.isNotEmpty) ...[
              Text(
                '다가오는 일정',
                style: AppTypography.t4SB12.copyWith(
                  color: AppColors.grayscale100,
                ),
              ),
              const SizedBox(height: 8),
              ...controller.schedules.map((schedule) {
                return GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Box(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  Text(
                                    schedule.title, // Fallback if title is null
                                    style: AppTypography.b1R14,
                                  ),
                                  const Spacer(), // Use Spacer instead of Expanded with SizedBox
                                  Text(
                                    '${DateFormat('M/d HH:mm').format(schedule.startDatetime)}, ${schedule.location}',
                                    style: AppTypography.b1R14.copyWith(
                                      color: AppColors.grayscale75,
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  Assets.icons.upcomingScheduleArrow
                                      .svg(width: 10),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }).toList(),
              const SizedBox(height: 20),
            ],
            // 공지
            if (group.memo != null && group.memo!.isNotEmpty) ...[
              Text(
                '공지',
                style: AppTypography.t4SB12.copyWith(
                  color: AppColors.grayscale100,
                ),
              ),
              const SizedBox(height: 8),
              Box(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Assets.icons.studyDetailPin.svg(width: 10),
                      const SizedBox(width: 15),
                      Text(
                        group.memo!,
                        style: AppTypography.b1R14,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
            // 그룹 소개
            Text(
              '모임 소개',
              style: AppTypography.t4SB12.copyWith(
                color: AppColors.grayscale100,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              group.description,
              style: AppTypography.b1R14,
            ),
            const SizedBox(height: 20),

            // 버튼 (친구 초대, 탈퇴하기)
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // 친구 초대 기능 (미구현)
                    },
                    child: const Text('친구 초대'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.point,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      textStyle: AppTypography.b1R14,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // 탈퇴 기능 (미구현)
                    },
                    child: const Text('탈퇴하기'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.point,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      textStyle: AppTypography.b1R14,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  // 공유 기록 탭 UI
  Widget _buildSharedRecordsTab() {
    return Obx(() => controller.sharedRecords.isEmpty
        ? Center(child: Text('공유 기록이 없습니다.', style: AppTypography.b1R14))
        : ListView.builder(
            padding: const EdgeInsets.all(16.0),
            itemCount: controller.sharedRecords.length,
            itemBuilder: (context, index) {
              final SharedRecord record = controller.sharedRecords[index];
              return GestureDetector(
                onTap: () =>
                    Get.toNamed(Routes.recordDetail, arguments: record),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (record.fileUrl != null)
                        SizedBox(
                          height: 100,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemCount: record.fileUrl!.length,
                            separatorBuilder: (_, __) => SizedBox(width: 8),
                            itemBuilder: (context, imgIndex) {
                              return ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  record.fileUrl![imgIndex],
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              );
                            },
                          ),
                        ),
                      SizedBox(height: 8),
                      Text(record.title, style: AppTypography.t3SB16),
                      SizedBox(height: 8),
                      Text(
                        record.content,
                        style: AppTypography.b1R14,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 8),
                      Text(
                        DateFormat('M/d HH:mm').format(record.createdAt),
                        style: AppTypography.b3R12.copyWith(
                          color: AppColors.grayscale75,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ));
  }

  // 개인 기록 탭 UI
  Widget _buildPersonalRecordsTab() {
    return Obx(() => controller.personalRecords.isEmpty
        ? Center(child: Text('개인 기록이 없습니다.', style: AppTypography.b1R14))
        : ListView.builder(
            padding: const EdgeInsets.all(16.0),
            itemCount: controller.personalRecords.length,
            itemBuilder: (context, index) {
              final record = controller.personalRecords[index];
              return GestureDetector(
                onTap: () =>
                    Get.toNamed(Routes.recordDetail, arguments: record),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (record.fileUrl != null)
                        SizedBox(
                          height: 100,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemCount: record.fileUrl!.length,
                            separatorBuilder: (_, __) => SizedBox(width: 8),
                            itemBuilder: (context, imgIndex) {
                              return ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  record.fileUrl![imgIndex],
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              );
                            },
                          ),
                        ),
                      SizedBox(height: 8),
                      Text(record.title, style: AppTypography.t3SB16),
                      SizedBox(height: 8),
                      Text(
                        record.content,
                        style: AppTypography.b1R14,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 8),
                      Text(
                        DateFormat('M/d HH:mm').format(record.createdAt),
                        style: AppTypography.b3R12
                            .copyWith(color: AppColors.grayscale75),
                      ),
                    ],
                  ),
                ),
              );
            },
          ));
  }

  // 태그 스타일 위젯
  Widget _buildTag(String label) {
    if (label == '승인 참여') {
      return Box(
        fillColor: AppColors.point,
        strokeColor: AppColors.point,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
          child: Text(
            label,
            style: AppTypography.b3R12.copyWith(
              color: AppColors.grayscale0,
            ),
          ),
        ),
      );
    } else {
      return Box(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
          child: Text(
            label,
            style: AppTypography.b3R12.copyWith(
              color: AppColors.point,
            ),
          ),
        ),
      );
    }
  }
}
