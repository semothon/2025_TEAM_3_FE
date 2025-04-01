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
    Get.put(StudyDetailController());

    final study = controller.studyInfo;

    return GetBuilder<StudyDetailController>(
      init: StudyDetailController(),
      builder: (controller) {
        return DefaultTabController(
          length: 3,
          child: Builder(
            builder: (BuildContext context) {
              final TabController tabController =
                  DefaultTabController.of(context);
              tabController.addListener(() {
                controller.update();
              });
              return Scaffold(
                appBar: AppBar(
                  title: Text(
                    study.title,
                    style: AppTypography.t3SB16,
                  ),
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
                body: TabBarView(
                  controller: tabController,
                  children: [
                    // 정보 탭
                    _buildInfoTab(),
                    // 공유 기록 탭 (기본 구조만)
                    _buildSharedRecordsTab(),
                    // 개인 기록 탭 (기본 구조만)
                    _buildPersonalRecordsTab(),
                  ],
                ),
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
                            elevation: 0, // 그림자 제거
                            shape: CircleBorder(),
                          )
                        : null,
              );
            },
          ),
        );
      },
    );
  }

  // 정보 탭 UI
  Widget _buildInfoTab() {
    final study = controller.studyInfo; // Get.arguments로 전달된 StudyGroup 객체

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
                  image: NetworkImage(study.thumbnail),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 16),
            // 스터디 제목
            Row(
              children: [
                Text(
                  study.title,
                  style: AppTypography.t0B24,
                ),
                SizedBox(width: 18),
                // 오른쪽 멤버 수 및 더보기 아이콘
                Icon(
                  Icons.person,
                  size: 16,
                  color: AppColors.grayscale100,
                ),
                const SizedBox(width: 4),
                Text(
                  '${study.numMembers}/${study.maxMembers}',
                  style: AppTypography.b3R12.copyWith(
                    color: AppColors.grayscale75,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            // 카테고리 및 필드
            Row(
              children: [
                _buildTag(study.category.toString().split('.').last),
                SizedBox(width: 8),
                _buildTag(study.field),
              ],
            ),
            SizedBox(height: 16),
            // 스터디 소개
            Text(
              '스터디 소개',
              style: AppTypography.t4SB12.copyWith(
                color: AppColors.grayscale100,
              ),
            ),
            SizedBox(height: 8),
            Text(
              study.description,
              style: AppTypography.b1R14,
            ),
            SizedBox(height: 20),
            // 일정 및 장소
            Text(
              '일정 및 장소',
              style: AppTypography.t4SB12.copyWith(
                color: AppColors.grayscale100,
              ),
            ),
            SizedBox(height: 8),
            Text(
              '일정: ${study.schedule}',
              style: AppTypography.b1R14,
            ),
            Text(
              '장소: ${study.location}',
              style: AppTypography.b1R14,
            ),
            SizedBox(height: 16),
            // 목표
            Text(
              '목표',
              style: AppTypography.t4SB12.copyWith(
                color: AppColors.grayscale100,
              ),
            ),
            SizedBox(height: 8),
            Box(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
                child: Row(
                  children: [
                    Assets.icons.studyDetailPin.svg(width: 10),
                    SizedBox(width: 15),
                    Text(
                      study.goal,
                      style: AppTypography.b1R14,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            // 모임 소개
            Text(
              '모임 소개',
              style: AppTypography.t4SB12.copyWith(
                color: AppColors.grayscale100,
              ),
            ),
            SizedBox(height: 8),
            Text(
              study.memo,
              style: AppTypography.b1R14,
            ),
            SizedBox(height: 16),
            // 참여 버튼
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // 참여 기능 (미구현)
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
    return Obx(() => controller.sharedRecords.isEmpty
        ? Center(child: Text('공유된 기록이 없습니다.', style: AppTypography.b1R14))
        : ListView.separated(
            padding: const EdgeInsets.all(16.0),
            itemCount: controller.sharedRecords.length,
            separatorBuilder: (context, index) => Divider(
              color: AppColors.grayscale50,
              thickness: 0.5,
              height: 32, // 항목 간 간격 조정
            ),
            itemBuilder: (context, index) {
              final record = controller.sharedRecords[index];
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
                  // Images (Horizontal scrollable list, 최대 3개 표시)
                  if (record.imageUrls.isNotEmpty)
                    SizedBox(
                      height: 80,
                      child: Row(
                        children: [
                          ...record.imageUrls.take(2).map((url) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.network(
                                  url,
                                  width: 80,
                                  height: 80,
                                  fit: BoxFit.cover,
                                  errorBuilder: (context, error, stackTrace) {
                                    return Container(
                                      width: 80,
                                      height: 80,
                                      color: AppColors.grayscale50,
                                      child: Center(
                                        child: Icon(
                                          Icons.broken_image,
                                          color: AppColors.grayscale75,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            );
                          }).toList(),
                          // 이미지가 3개 초과일 경우 "+N" 표시
                          if (record.imageUrls.length > 3)
                            Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.network(
                                    record.imageUrls[2],
                                    width: 80,
                                    height: 80,
                                    fit: BoxFit.cover,
                                    errorBuilder: (context, error, stackTrace) {
                                      return Container(
                                        width: 80,
                                        height: 80,
                                        color: AppColors.grayscale50,
                                        child: Center(
                                          child: Icon(
                                            Icons.broken_image,
                                            color: AppColors.grayscale75,
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                Container(
                                  width: 80,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    color: Colors.black.withAlpha(100),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '+${record.imageUrls.length - 3}',
                                      style: AppTypography.t2SB18
                                          .copyWith(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          else
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network(
                                record.imageUrls[2],
                                width: 80,
                                height: 80,
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) {
                                  return Container(
                                    width: 80,
                                    height: 80,
                                    color: AppColors.grayscale50,
                                    child: Center(
                                      child: Icon(
                                        Icons.broken_image,
                                        color: AppColors.grayscale75,
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                        ],
                      ),
                    ),
                  SizedBox(height: 8),
                  // Title
                  Text(
                    record.title,
                    style: AppTypography.t3SB16,
                  ),
                  SizedBox(height: 4),
                  // Content
                  SizedBox(
                    width: 300,
                    child: Text(
                      record.content,
                      style: AppTypography.b1R14
                          .copyWith(color: AppColors.grayscale100),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(height: 10),
                  // Created At
                  Text(
                    '${DateFormat('M/d HH:mm').format(record.createdAt)}',
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
    return Obx(() => controller.personalRecords.isEmpty
        ? Center(child: Text('개인 기록이 없습니다.', style: AppTypography.b1R14))
        : ListView.separated(
            padding: const EdgeInsets.all(16.0),
            itemCount: controller.personalRecords.length,
            separatorBuilder: (context, index) => Divider(
              color: AppColors.grayscale50,
              thickness: 0.5,
              height: 32, // 항목 간 간격 조정
            ),
            itemBuilder: (context, index) {
              final record = controller.personalRecords[index];
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      if (!record.isPublic)
                        Icon(
                          Icons.lock,
                          color: AppColors.grayscale75,
                        ),
                      Icon(
                        Icons.more_vert_sharp,
                        color: AppColors.grayscale75,
                      ),
                    ],
                  ),
                  // Images (Horizontal scrollable list, 최대 3개 표시)
                  if (record.imageUrls.isNotEmpty)
                    SizedBox(
                      height: 80,
                      child: Row(
                        children: [
                          ...record.imageUrls.take(2).map((url) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.network(
                                  url,
                                  width: 80,
                                  height: 80,
                                  fit: BoxFit.cover,
                                  errorBuilder: (context, error, stackTrace) {
                                    return Container(
                                      width: 80,
                                      height: 80,
                                      color: AppColors.grayscale50,
                                      child: Center(
                                        child: Icon(
                                          Icons.broken_image,
                                          color: AppColors.grayscale75,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            );
                          }).toList(),
                          // 이미지가 3개 초과일 경우 "+N" 표시
                          if (record.imageUrls.length > 3)
                            Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.network(
                                    record.imageUrls[2],
                                    width: 80,
                                    height: 80,
                                    fit: BoxFit.cover,
                                    errorBuilder: (context, error, stackTrace) {
                                      return Container(
                                        width: 80,
                                        height: 80,
                                        color: AppColors.grayscale50,
                                        child: Center(
                                          child: Icon(
                                            Icons.broken_image,
                                            color: AppColors.grayscale75,
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                Container(
                                  width: 80,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    color: Colors.black.withAlpha(100),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '+${record.imageUrls.length - 3}',
                                      style: AppTypography.t2SB18
                                          .copyWith(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          else
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network(
                                record.imageUrls[2],
                                width: 80,
                                height: 80,
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) {
                                  return Container(
                                    width: 80,
                                    height: 80,
                                    color: AppColors.grayscale50,
                                    child: Center(
                                      child: Icon(
                                        Icons.broken_image,
                                        color: AppColors.grayscale75,
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                        ],
                      ),
                    ),
                  SizedBox(height: 8),
                  // Title
                  Text(
                    record.title,
                    style: AppTypography.t3SB16,
                  ),
                  SizedBox(height: 4),
                  // Content
                  SizedBox(
                    width: 300,
                    child: Text(
                      record.content,
                      style: AppTypography.b1R14
                          .copyWith(color: AppColors.grayscale100),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(height: 10),
                  // Created At
                  Text(
                    '${DateFormat('M/d HH:mm').format(record.createdAt)}',
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
