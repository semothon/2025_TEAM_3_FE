// search_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:team_3_frontend/theme/app_colors.dart';
import 'package:team_3_frontend/theme/app_typography.dart';
import 'package:team_3_frontend/widgets/box.dart';
import 'package:team_3_frontend/widgets/other_study_box.dart';
import 'package:team_3_frontend/widgets/apply_study.dart';
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
              child: Obx(() => TextField(
                    controller: controller.textController,
                    onChanged: controller.onSearchTextChanged,
                    onSubmitted: (_) => controller.setSearchActive(true),
                    style: AppTypography.b1R14.copyWith(color: Colors.black),
                    decoration: InputDecoration(
                      hintText: '키워드를 검색해보세요.',
                      hintStyle: AppTypography.b1R14
                          .copyWith(color: AppColors.grayscale50),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: controller.searching.value
                            ? GestureDetector(
                                onTap: controller.clearSearch,
                                child: const Icon(Icons.close,
                                    color: AppColors.point),
                              )
                            : GestureDetector(
                                onTap: () => controller.setSearchActive(true),
                                child: SvgPicture.asset(
                                  'assets/icons/search.svg',
                                  width: 16,
                                  height: 16,
                                  fit: BoxFit.contain,
                                  colorFilter: const ColorFilter.mode(
                                      AppColors.point, BlendMode.srcIn),
                                ),
                              ),
                      ),
                      suffixIconConstraints: const BoxConstraints(
                        minWidth: 32,
                        minHeight: 32,
                        maxWidth: 32,
                        maxHeight: 32,
                      ),
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
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 16),
                    ),
                  )),
            ),

            // ✅ 선택된 필터 표시 (검색 결과 화면에서도 유지)
            Obx(() => Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                  child: Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: controller.selectedFilters
                        .map((filter) => Box(
                              fillColor: AppColors.box2,
                              strokeColor: AppColors.grayscale50,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 4),
                                    child: Text(filter,
                                        style: AppTypography.b5M14
                                            .copyWith(color: AppColors.point)),
                                  ),
                                  GestureDetector(
                                    onTap: () =>
                                        controller.toggleFilter(filter),
                                    child: const Icon(Icons.close, size: 16),
                                  ),
                                  const SizedBox(width: 4),
                                ],
                              ),
                            ))
                        .toList(),
                  ),
                )),
            Obx(() {
              final isSearching = controller.searching.value;
              final groups = controller.filteredGroups;

              return Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (!isSearching) ...[
                        _buildFilterSection(
                            '검색 필터', controller.categories, buttonWidth),
                        _buildFilterSection(
                            '분야', controller.fields, buttonWidth),
                        _buildFilterSection(
                            '출석', controller.attendances, buttonWidth),
                        _buildFilterSection(
                            '만남', controller.meets, buttonWidth),
                        _buildFilterSection(
                            '분위기', controller.moods, buttonWidth),
                      ] else ...[
                        Padding(
                          padding: const EdgeInsets.only(top: 16, bottom: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('검색 결과',
                                  style: AppTypography.b6SB14
                                      .copyWith(fontSize: 16)),
                              IconButton(
                                icon:
                                    SvgPicture.asset('assets/icons/filter.svg'),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                        if (groups.isEmpty)
                          Padding(
                            padding: const EdgeInsets.only(top: 16),
                            child: Text("검색 결과가 없습니다."),
                          )
                        else
                          ...groups.map(
                            (group) => Padding(
                              padding: const EdgeInsets.only(bottom: 12),
                              child: OtherStudyBox(
                                title: group.title,
                                subtitle: group.description,
                                memberCount:
                                    '${group.numMembers}/${group.maxMembers}',
                                thumbnail: group.thumbnail,
                                approve: group.approve,
                                field: group.field,
                                attendance: group.attendance,
                                meet: group.meet,
                                mood: group.mood,
                                onPressed: () {
                                  // TODO: 상세 페이지 이동 또는 팝업
                                },
                              ),
                            ),
                          ),
                      ]
                    ],
                  ),
                ),
              );
            })
          ],
        ),
      ),
    );
  }

  Widget _buildFilterSection(
      String title, List<String> options, double buttonWidth) {
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
                  final isSelected =
                      controller.selectedFilters.contains(option);
                  return GestureDetector(
                    onTap: () => controller.toggleFilter(option),
                    child: Box(
                      fillColor:
                          isSelected ? AppColors.point : AppColors.background,
                      strokeColor:
                          isSelected ? AppColors.point : AppColors.grayscale50,
                      child: SizedBox(
                        width: buttonWidth,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Center(
                            child: Text(
                              option,
                              style: isSelected
                                  ? AppTypography.b6SB14
                                      .copyWith(color: AppColors.grayscale0)
                                  : AppTypography.b1R14
                                      .copyWith(color: AppColors.grayscale100),
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

// String _getAttendanceText(AttendanceType type) {
//   switch (type) {
//     case AttendanceType.every:
//       return '매일 출석';
//     case AttendanceType.free:
//       return '자율 출석';
//     case AttendanceType.TBD:
//     default:
//       return '모임 내 협의';
//   }
// }
}
