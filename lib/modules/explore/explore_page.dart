import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team_3_frontend/gen/assets.gen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:team_3_frontend/theme/app_colors.dart';
import 'package:team_3_frontend/theme/app_typography.dart';
import 'package:team_3_frontend/widgets/box.dart';
import 'package:team_3_frontend/modules/explore/explore_controller.dart';
import 'package:team_3_frontend/widgets/other_study_box.dart';
import 'search/search_page.dart';
import 'search/search_controller.dart';
import 'package:team_3_frontend/widgets/apply_study.dart';

class ExplorePage extends GetView<ExploreController> {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: _buildAppBar(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 12),
            _buildFilterTabs(),
            _buildCreateGroupButton(),
            Divider(
                color: AppColors.grayscale50,
                thickness: 1,
                indent: 16,
                endIndent: 16,
                height: 24),
            _buildSectionTitle(),
            Expanded(child: _buildStudyListView()),
          ],
        ),
      ),
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
          SvgPicture.asset(
            'assets/icons/logo.svg',
            height: 50,
          ),
          const Spacer(),
          IconButton(
            icon: SvgPicture.asset(
              'assets/icons/search.svg',
              width: 24,
              height: 24,
            ),
            onPressed: () {
              Get.put(Ex_SearchController());
              Get.to(() => const SearchPage());
            },
          ),
          IconButton(
            icon: Assets.icons.notification.svg(height: 24),
            onPressed: () {
              // 알림
            },
          ),
        ],
      ),
    );
  }

  Widget _buildFilterTabs() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
      child: Obx(() => Row(
            children: [
              _buildTabButton("스터디",
                  isSelected: controller.selectedCategory.value == "스터디",
                  onTap: () => controller.selectCategory("스터디")),
              const SizedBox(width: 8),
              _buildTabButton("소모임",
                  isSelected: controller.selectedCategory.value == "소모임",
                  onTap: () => controller.selectCategory("소모임")),
            ],
          )),
    );
  }

  Widget _buildTabButton(String label,
      {required bool isSelected, required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Box(
        fillColor: isSelected ? AppColors.point : AppColors.background,
        strokeColor: isSelected ? Colors.transparent : AppColors.grayscale50,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 3),
          child: Text(
            label,
            style: AppTypography.b6SB14.copyWith(
              color: isSelected ? AppColors.grayscale0 : AppColors.grayscale75,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCreateGroupButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: () {
          // 모임 생성 페이지 이동 예정
        },
        child: Ink(
          decoration: BoxDecoration(
            color: AppColors.grayscale0,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/group.svg',
                  width: 18,
                  height: 18,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text("내 모임 만들기", style: AppTypography.t3SB16),
                ),
                SvgPicture.asset(
                  'assets/icons/arrow_right.svg',
                  width: 22,
                  height: 22,
                ),
                const SizedBox(width: 6),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("추천 스터디", style: AppTypography.b1R14),
          InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: () {
              // 필터 동작 예정
            },
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: SvgPicture.asset(
                'assets/icons/filter.svg',
                width: 16,
                height: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStudyListView() {
    return Obx(() => ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          itemCount: controller.filteredList.length,
          separatorBuilder: (_, __) => const SizedBox(height: 12),
          itemBuilder: (context, index) {
            final group = controller.filteredList[index];
            return OtherStudyBox(
              title: group.title,
              subtitle: group.description,
              memberCount: '${group.numMembers}/${group.maxMembers}',
              thumbnail: '',
              onPressed: () {
                showStudyDetailDialog(context, group);
              },
            );
          },
        ));
  }
}
