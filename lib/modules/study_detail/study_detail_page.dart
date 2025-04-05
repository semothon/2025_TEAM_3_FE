import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team_3_frontend/gen/assets.gen.dart';
import 'package:team_3_frontend/modules/study_detail/study_detail_controller.dart';
import 'package:team_3_frontend/theme/app_colors.dart';
import '../../theme/app_typography.dart';
import '../../widgets/box.dart';
import 'package:intl/intl.dart';

class StudyDetailPage extends GetView<StudyDetailController> {
  const StudyDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Builder(
        builder: (BuildContext context) {
          final TabController tabController = DefaultTabController.of(context);
          tabController.addListener(() {
            controller.update();
          });
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
                  onTap: () {},
                  child: Assets.icons.studyDetailChat.svg(width: 24),
                ),
                const SizedBox(width: 16),
              ],
              bottom: TabBar(
                controller: tabController,
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
            body: Obx(() => controller.groupDetail.value == null
                ? Center(child: CircularProgressIndicator())
                : TabBarView(
                    controller: tabController,
                    children: [
                      // 정보 탭
                      _buildInfoTab(),
                      // 공유 기록 탭
                      _buildSharedRecordsTab(),
                      // 개인 기록 탭
                      _buildPersonalRecordsTab(),
                    ],
                  )),
            floatingActionButton:
                tabController.index == 1 || tabController.index == 2
                    ? FloatingActionButton(
                        onPressed: () {
                          // 글 작성 기능 (미구현)
                        },
                        child: Icon(
                          Icons.edit,
                          color: AppColors.grayscale0,
                        ),
                        backgroundColor: AppColors.point,
                        elevation: 0,
                        shape: CircleBorder(),
                      )
                    : null,
          );
        },
      ),
    );
    ;
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
                      ? 'https://via.placeholder.com/150' // Placeholder if empty
                      : group.thumbnail),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 16),
            // 그룹 제목
            Row(
              children: [
                Text(
                  group.title,
                  style: AppTypography.t0B24,
                ),
                SizedBox(width: 18),
                Icon(
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
            SizedBox(height: 8),
            // 모임 방식 및 출석 방식
            Row(
              children: [
                _buildTag(group.meet),
                SizedBox(width: 8),
                _buildTag(group.attendance),
              ],
            ),
            SizedBox(height: 16),
            // 그룹 소개
            Text(
              '그룹 소개',
              style: AppTypography.t4SB12.copyWith(
                color: AppColors.grayscale100,
              ),
            ),
            SizedBox(height: 8),
            Text(
              group.description,
              style: AppTypography.b1R14,
            ),
            SizedBox(height: 20),
            // 일정 및 장소 (최신 일정 표시)
            Text(
              '일정 및 장소',
              style: AppTypography.t4SB12.copyWith(
                color: AppColors.grayscale100,
              ),
            ),
            SizedBox(height: 8),
            Text(
              '일정: ${controller.schedules.isNotEmpty ? DateFormat('M/d HH:mm').format(controller.schedules.first.startDatetime) : '미정'}',
              style: AppTypography.b1R14,
            ),
            Text(
              '장소: ${controller.schedules.isNotEmpty ? controller.schedules.first.location : '미정'}',
              style: AppTypography.b1R14,
            ),
            SizedBox(height: 16),
            // 메모
            if (group.memo != null && group.memo!.isNotEmpty) ...[
              Text(
                '메모',
                style: AppTypography.t4SB12.copyWith(
                  color: AppColors.grayscale100,
                ),
              ),
              SizedBox(height: 8),
              Box(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 15),
                  child: Row(
                    children: [
                      Assets.icons.studyDetailPin.svg(width: 10),
                      SizedBox(width: 15),
                      Text(
                        group.memo!,
                        style: AppTypography.b1R14,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
            ],
            // 참여 버튼
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // 친구 초대 기능 (미구현)
                    },
                    child: Text('친구 초대'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.point,
                      foregroundColor: Colors.white,
                    ),
                  ),
                ),
                SizedBox(width: 21),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // 탈퇴 기능 (미구현)
                    },
                    child: Text('탈퇴하기'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.point,
                      foregroundColor: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  // 공유 기록 탭 UI
  Widget _buildSharedRecordsTab() {
    return Obx(() => controller.schedules.isEmpty
        ? Center(child: Text('일정이 없습니다.', style: AppTypography.b1R14))
        : ListView.separated(
            padding: const EdgeInsets.all(16.0),
            itemCount: controller.schedules.length,
            separatorBuilder: (context, index) => Divider(
              color: AppColors.grayscale50,
              thickness: 0.5,
              height: 32,
            ),
            itemBuilder: (context, index) {
              final schedule = controller.schedules[index];
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Icon(
                      Icons.more_vert_sharp,
                      color: AppColors.grayscale75,
                    ),
                  ),
                  // No images in Schedule, so this section is omitted unless added later
                  SizedBox(height: 8),
                  // Title
                  Text(
                    schedule.title,
                    style: AppTypography.t3SB16,
                  ),
                  SizedBox(height: 4),
                  // Memo as content
                  SizedBox(
                    width: 300,
                    child: Text(
                      schedule.memo,
                      style: AppTypography.b1R14
                          .copyWith(color: AppColors.grayscale100),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(height: 10),
                  // Start DateTime
                  Text(
                    '${DateFormat('M/d HH:mm').format(schedule.startDatetime)}',
                    style: AppTypography.b3R12.copyWith(
                      color: AppColors.grayscale75,
                    ),
                  ),
                ],
              );
            },
          ));
  }

  // 개인 기록 탭 UI
  Widget _buildPersonalRecordsTab() {
    return Obx(() => controller.schedules.isEmpty
        ? Center(child: Text('일정이 없습니다.', style: AppTypography.b1R14))
        : ListView.separated(
            padding: const EdgeInsets.all(16.0),
            itemCount: controller.schedules.length,
            separatorBuilder: (context, index) => Divider(
              color: AppColors.grayscale50,
              thickness: 0.5,
              height: 32,
            ),
            itemBuilder: (context, index) {
              final schedule = controller.schedules[index];
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.more_vert_sharp,
                        color: AppColors.grayscale75,
                      ),
                    ],
                  ),
                  // No images in Schedule, so this section is omitted unless added later
                  SizedBox(height: 8),
                  // Title
                  Text(
                    schedule.title,
                    style: AppTypography.t3SB16,
                  ),
                  SizedBox(height: 4),
                  // Memo as content
                  SizedBox(
                    width: 300,
                    child: Text(
                      schedule.memo,
                      style: AppTypography.b1R14
                          .copyWith(color: AppColors.grayscale100),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(height: 10),
                  // Start DateTime
                  Text(
                    '${DateFormat('M/d HH:mm').format(schedule.startDatetime)}',
                    style: AppTypography.b3R12.copyWith(
                      color: AppColors.grayscale75,
                    ),
                  ),
                ],
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
