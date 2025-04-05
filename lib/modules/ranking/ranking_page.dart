import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team_3_frontend/theme/app_colors.dart';
import 'package:team_3_frontend/theme/app_typography.dart';
import 'package:team_3_frontend/widgets/box.dart';
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
            return SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 420, // 원하는 높이로 조절 가능
                    child: PageView.builder(
                      controller: _pageController,
                      itemCount: myGroups.length,
                      onPageChanged: (int page) {
                        currentPage.value = page;
                      },
                      itemBuilder: (context, index) {
                        final rank = myGroups[index];
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [Color(0xFF96DFFF), Color(0xFFD5FFFE)],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: _buildTreeCard(rank, index + 1),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 16),
                  _buildRankingList(myGroups),
                ],
              ),
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
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(width: 8),
            Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: 16, vertical: 6), // 패딩 10
              decoration: BoxDecoration(
                color: const Color(0xFFE5FDFF),

                borderRadius: BorderRadius.circular(50), // 라운드 50
              ),
              child: Text(
                rank.title ?? '',
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
            if (rank.fruitNum > 0) ...[
              Text(
                '모은 열매',
                style: TextStyle(color: Colors.grey[700]), // 기본 텍스트 색
              ),
              const SizedBox(width: 4),
              Assets.icons.rankApple.svg(width: 13),
              const SizedBox(width: 4),
              Text(
                '${rank.recordNum}',
                style: AppTypography.b2R13.copyWith(color: AppColors.point),
              ),
            ] else
              Text.rich(
                TextSpan(
                  children: [
                    const TextSpan(text: '성장까지 기록 '),
                    TextSpan(
                      text: '${rank.recordNum}',
                      style: AppTypography.t3SB16
                          .copyWith(color: AppColors.point), // 원하는 색!
                    ),
                    const TextSpan(text: '개!'),
                  ],
                  style: TextStyle(color: Colors.grey[700]), // 기본 텍스트 색
                ),
              ),
          ],
        ),
        Expanded(child: SizedBox()),
        const SizedBox(height: 16),
        _buildTreeImage(rank.tree ?? '', rank.fruitNum),
      ],
    ),
  );
}

Widget _buildTreeImage(String treeLevel, int fruitNum) {
  if (fruitNum != 0) {}
  switch (treeLevel) {
    case "0":
      return Assets.icons.tree0.svg(width: 200);
    case "1":
      return Assets.icons.tree1.svg(width: 200);
    case "2":
      return Assets.icons.tree2.svg(width: 200);
    case "3":
      return Assets.icons.tree3.svg(width: 200);
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
          style: AppTypography.t3SB16,
        ),
      ),
      const SizedBox(height: 8),
      ...ranks.asMap().entries.map((entry) {
        final index = entry.key;
        final rank = entry.value;
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4),
          child: Row(
            children: [
              _buildRankIcon(index + 1),
              SizedBox(width: 18),
              Expanded(
                child: Box(
                  fillColor: Colors.white,
                  strokeColor: Color(0xFFDFDFDF),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 4.0),
                    child: ListTile(
                      contentPadding: EdgeInsets.all(0),
                      title: Text(
                        rank.title ?? '',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Row(
                        children: [
                          Assets.icons.rankTree.svg(width: 13),
                          const SizedBox(width: 4),
                          Text(
                            '${(rank.recordNum / 10 * 100).toInt()}%',
                            style: AppTypography.b2R13
                                .copyWith(color: AppColors.point),
                          ),
                          const SizedBox(width: 8),
                          if (rank.fruitNum > 0) ...[
                            Assets.icons.rankApple.svg(width: 13),
                            const SizedBox(width: 4),
                            Text(
                              '${rank.recordNum}',
                              style: AppTypography.b2R13
                                  .copyWith(color: AppColors.point),
                            ),
                          ],
                        ],
                      ),
                      trailing: Assets.icons.arrowRight.svg(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }).toList(),
    ],
  );
}

Widget _buildRankIcon(int rank) {
  switch (rank) {
    case 1:
      return Assets.icons.rank1.svg(width: 37);

    case 2:
      return Assets.icons.rank2.svg(width: 37);

    case 3:
      return Assets.icons.rank3.svg(width: 37);

    default:
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Text(
          '$rank',
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
  }
}
