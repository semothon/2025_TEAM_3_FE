import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team_3_frontend/theme/app_colors.dart';
import 'package:team_3_frontend/theme/app_typography.dart';
import '../../gen/assets.gen.dart';
import 'ranking_controller.dart';
import '../../data/models/rank.dart';

class RankingPage extends GetView<RankingController> {
  const RankingPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(RankingController());
    final PageController _pageController =
        PageController(viewportFraction: 0.85);

    // 현재 페이지를 추적하기 위한 변수
    RxInt currentPage = 0.obs;

    return Scaffold(
      appBar: _buildAppBar(),
      body: FutureBuilder(
        future: controller.fetchRankingData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('에러: ${snapshot.error}'));
          } else {
            final myGroups = snapshot.data!['myGroups'] as List<Rank>;
            return Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.white, // 바깥쪽 배경을 흰색으로 설정
                    child: Stack(
                      children: [
                        PageView.builder(
                          controller: _pageController,
                          itemCount: myGroups.length,
                          onPageChanged: (int page) {
                            currentPage.value = page; // 페이지 변경 시 현재 페이지 업데이트
                          },
                          itemBuilder: (context, index) {
                            final rank = myGroups[index];
                            return Padding(
                              padding: const EdgeInsets.all(8.0), // 패딩 16
                              child: Container(
                                decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                    colors: [
                                      Color(0xFFA3E6FF),
                                      Color(0xFFD1FDFE)
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                  ), // 카드 내부에 그라데이션 적용
                                  borderRadius:
                                      BorderRadius.circular(20), // 둥근 모서리 10
                                ),
                                child: _buildTreeCard(rank, index + 1),
                              ),
                            );
                          },
                        ),
                        // 페이지 인디케이터
                        Positioned(
                          bottom: 20,
                          left: 0,
                          right: 0,
                          child: Obx(
                            () => Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(
                                myGroups.length,
                                (index) => Container(
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 4),
                                  width: 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: index == currentPage.value
                                        ? Colors.grey[700]
                                        : Colors.grey[300],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                _buildRankingList(myGroups),
              ],
            );
          }
        },
      ),
    );
  }
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
          onPressed: () {},
        ),
      ],
    ),
  );
}

Widget _buildTreeCard(Rank rank, int rankPosition) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(width: 8),
            Container(
              padding: const EdgeInsets.all(10), // 패딩 10
              decoration: BoxDecoration(
                color: const Color(0xFFE5FDFF), // 배경색을 BoxDecoration에서 설정
                borderRadius: BorderRadius.circular(50), // 라운드 50
              ),
              child: Text(
                rank.title,
                style: AppTypography.t3SB16,
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        LinearProgressIndicator(
          value: rank.recordNum / 10,
          backgroundColor: Colors.grey[300],
          color: AppColors.point,
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '성장까지 기록 ',
                    style: AppTypography.b2R13.copyWith(
                      color: AppColors.grayscale100,
                    ),
                  ),
                  TextSpan(
                    text: '${rank.recordNum}',
                    style: AppTypography.t3SB16.copyWith(
                      color: AppColors.point, // 블루 색상 적용
                    ),
                  ),
                  TextSpan(
                    text: '개!',
                    style: AppTypography.b2R13.copyWith(
                      color: AppColors.grayscale100,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        _buildTreeImage(rank.tree),
      ],
    ),
  );
}

Widget _buildTreeImage(String treeLevel) {
  switch (treeLevel) {
    case "0":
      return Assets.icons.tree0.svg(height: 200);
    case "1":
      return Assets.icons.tree1.svg(height: 200);
    case "2":
      return Assets.icons.tree2.svg(height: 200);
    case "3":
      return Assets.icons.tree3.svg(height: 200);
    default:
      return const SizedBox.shrink();
  }
}

Widget _buildRankingList(List<Rank> ranks) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Text(
          '모임 랭킹',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      const SizedBox(height: 8),
      ...ranks.asMap().entries.map((entry) {
        final index = entry.key;
        final rank = entry.value;
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 4.0),
          child: Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              leading: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _buildRankIcon(index + 1),
                  const SizedBox(width: 8),
                  const Icon(Icons.flag, size: 20, color: Colors.blue),
                  const SizedBox(width: 8),
                ],
              ),
              title: Text(
                rank.title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Row(
                children: [
                  const Icon(Icons.eco, size: 20, color: Colors.green),
                  const SizedBox(width: 4),
                  Text(
                    '${(rank.recordNum / 10 * 100).toInt()}%',
                    style: const TextStyle(color: Colors.green),
                  ),
                  const SizedBox(width: 8),
                  Text('성장까지 기록 ${rank.recordNum}개!'),
                ],
              ),
              trailing: rank.fruitNum > 0
                  ? Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.apple, size: 20, color: Colors.red),
                        const SizedBox(width: 4),
                        Text('${rank.fruitNum}'),
                      ],
                    )
                  : null,
            ),
          ),
        );
      }).toList(),
    ],
  );
}

Widget _buildRankIcon(int rank) {
  switch (rank) {
    case 1:
      return const Icon(Icons.emoji_events, color: Colors.amber, size: 30);
    case 2:
      return const Icon(Icons.emoji_events, color: Colors.grey, size: 30);
    case 3:
      return const Icon(Icons.emoji_events, color: Colors.brown, size: 30);
    default:
      return Text(
        '$rank',
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      );
  }
}
