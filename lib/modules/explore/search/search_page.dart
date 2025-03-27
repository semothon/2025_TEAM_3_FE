import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:team_3_frontend/theme/app_colors.dart';
import 'package:team_3_frontend/theme/app_typography.dart';
import 'package:team_3_frontend/widgets/box.dart';
import 'package:team_3_frontend/widgets/other_study_box.dart';
import 'search_controller.dart';

class SearchPage extends GetView<Ex_SearchController> {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double buttonWidth = (screenWidth - 16 * 2 - 8 * 3) / 3;

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 뒤로가기 아이콘
            Padding(
              padding: const EdgeInsets.all(16),
              child: GestureDetector(
                onTap: () => Get.back(),
                child: SvgPicture.asset(
                  'assets/icons/arrow_left.svg',
                  width: 24,
                  height: 24,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
              child: TextField(
                onChanged: controller.onSearchTextChanged,
                style: AppTypography.b1R14.copyWith(color: Colors.black),
                decoration: InputDecoration(
                  hintText: '키워드를 검색해보세요.',
                  hintStyle: AppTypography.b1R14.copyWith(color: AppColors.grayscale50),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: SvgPicture.asset(
                      'assets/icons/search.svg',
                      width: 16,
                      height: 16,
                      fit: BoxFit.contain,
                      colorFilter: const ColorFilter.mode(AppColors.point, BlendMode.srcIn),
                    ),
                  ),
                  suffixIconConstraints: const BoxConstraints(
                    minWidth: 32,
                    minHeight: 32,
                    maxWidth: 32,
                    maxHeight: 32,
                  ),
                  // 🔽 테두리 모두 동일하게 설정
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: AppColors.box1Border),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: AppColors.box1Border),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: AppColors.box1Border),
                  ),
                  filled: true,
                  fillColor: AppColors.box1,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                ),
              ),
            ),

            // 선택된 필터 표시
            Obx(() => Padding(
              padding: const EdgeInsets.all(16),
              child: Wrap(
                spacing: 8,
                runSpacing: 8,
                children: controller.selectedFilters.map((filter) => Box(
                  fillColor: AppColors.box2,
                  strokeColor: AppColors.grayscale50,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        child: Text(filter, style: AppTypography.b5M14.copyWith(color: AppColors.point)),
                      ),
                      GestureDetector(
                        onTap: () => controller.toggleFilter(filter),
                        child: const Icon(Icons.close, size: 16),
                      ),
                      const SizedBox(width: 4),
                    ],
                  ),
                )).toList(),
              ),
            )),


            // 필터 선택 및 결과 영역
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildFilterSection('검색 필터', controller.categories, buttonWidth),
                    _buildFilterSection('분야', controller.fields, buttonWidth),
                    _buildFilterSection('출석', controller.attendances, buttonWidth),
                    _buildFilterSection('만남', controller.meets, buttonWidth),
                    _buildFilterSection('분위기', controller.moods, buttonWidth),
                    const SizedBox(height: 16),
                    Obx(() => Column(
                      children: controller.filteredGroups.map((group) => Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: OtherStudyBox(
                          title: group.title,
                          subtitle: group.description,
                          memberCount: '${group.numMembers}/${group.maxMembers}',
                          onJoinPressed: () {},
                          onAttendancePressed: () {},
                          onReportPressed: () {},
                        ),
                      )).toList(),
                    )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFilterSection(String title, List<String> options, double buttonWidth) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppTypography.b6SB14.copyWith(
              color: AppColors.grayscale100,
              fontSize: title == '검색 필터' ? 18 : 14,
            ),
          ),
          SizedBox(height: title == '검색 필터' ? 18 : 14),
          Obx(() => Wrap(
            spacing: 8,
            runSpacing: 8,
            children: options.map((option) {
              final isSelected = controller.selectedFilters.contains(option);
              return GestureDetector(
                onTap: () => controller.toggleFilter(option),
                child: Box(
                  fillColor: isSelected ? AppColors.point : AppColors.background,
                  strokeColor: isSelected ? AppColors.point : AppColors.grayscale50,
                  child: SizedBox(
                    width: buttonWidth,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Center(
                        child: Text(
                          option,
                          style: isSelected
                              ? AppTypography.b6SB14.copyWith(color: AppColors.grayscale0)
                              : AppTypography.b1R14.copyWith(color: AppColors.grayscale100),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),
          )),
        ],
      ),
    );
  }
}