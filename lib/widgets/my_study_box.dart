import 'package:flutter/material.dart';
import 'package:team_3_frontend/theme/app_colors.dart';
import 'package:team_3_frontend/theme/app_typography.dart';
import 'box.dart';

class MyStudyBox extends StatelessWidget {
  final String title;
  final String subtitle;
  final String memberCount;
  final String thumbnail;
  final bool approve;
  final String field;
  final String attendance;
  final String meet;
  final String mood;
  final VoidCallback onPressed;

  const MyStudyBox({
    super.key,
    required this.title,
    required this.subtitle,
    required this.memberCount,
    required this.thumbnail,
    required this.approve,
    required this.field,
    required this.attendance,
    required this.meet,
    required this.mood,
    required this.onPressed,
  });

  static const Map<String, String> attendanceMap = {
    'every': '매일 출석',
    'free': '자율 출석',
  };

  static const Map<String, String> meetMap = {
    'offline': '오프라인',
    'online': '온라인',
    'TBD': '모임 내 협의',
  };

  static const Map<String, String> moodMap = {
    'friendly': '친목',
    'focus': '집중',
    'free': '자율',
  };

  List<Widget> buildTagWidgets() {
    final translatedTags = [
      attendanceMap[attendance] ?? attendance,
      field,
      meetMap[meet] ?? meet,
      moodMap[mood] ?? mood,
    ];

    return translatedTags.map((tag) {
      return Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.grayscale75),
            borderRadius: BorderRadius.circular(20),
            color: AppColors.grayscale0,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          child: Text(
            tag,
            style: AppTypography.b3R12.copyWith(color: AppColors.grayscale75),
          ),
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.box1,
          border: Border.all(color: AppColors.box1Border, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  width: 88,
                  height: 88,
                  color: AppColors.grayscale0,
                  child: thumbnail.isNotEmpty
                      ? Image.network(
                    thumbnail,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container();
                    },
                  )
                      : Container(),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(title, style: AppTypography.t3SB16),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: const Icon(Icons.more_vert,
                              size: 20, color: AppColors.grayscale50),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Text(
                      subtitle,
                      style: AppTypography.b0L12
                          .copyWith(color: AppColors.grayscale100),
                    ),
                    const SizedBox(height: 14),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Box(
                            fillColor: AppColors.point,
                            strokeColor: AppColors.point,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 4),
                              child: Text(
                                approve ? '승인 참여' : '자율 참여',
                                style: AppTypography.b3R12
                                    .copyWith(color: AppColors.grayscale0),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: ShaderMask(
                            shaderCallback: (bounds) {
                              return const LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Colors.white,
                                  Colors.white,
                                  Colors.transparent,
                                ],
                                stops: [0.0, 0.75, 1.0],
                              ).createShader(bounds);
                            },
                            blendMode: BlendMode.dstIn,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(children: buildTagWidgets()),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(Icons.person,
                                size: 16, color: AppColors.grayscale75),
                            const SizedBox(width: 4),
                            Text(memberCount, style: AppTypography.b3R12),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}