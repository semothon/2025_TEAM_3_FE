import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team_3_frontend/gen/assets.gen.dart';
import 'package:team_3_frontend/theme/app_colors.dart';
import 'package:team_3_frontend/theme/app_typography.dart';

import 'community_controller.dart';
import 'package:team_3_frontend/modules/community/chat/chat_page.dart';

class CommunityPage extends GetView<CommunityController> {
  const CommunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CommunityController());

    return Scaffold(
      appBar: _buildAppBar(),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
            decoration: BoxDecoration(
              color: AppColors.grayscale25,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: TabBar(
              dividerColor: Colors.transparent,
              controller: controller.tabController,
              tabs: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  child: Center(
                    child: Obx(
                          () => Text(
                        '채팅방',
                        style: controller.currentTabIndex.value == 0
                            ? AppTypography.b6SB14.copyWith(color: AppColors.point)
                            : AppTypography.b5M14.copyWith(color: AppColors.grayscale75),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  child: Center(
                    child: Obx(
                          () => Text(
                        '친구',
                        style: controller.currentTabIndex.value == 1
                            ? AppTypography.b6SB14.copyWith(color: AppColors.point)
                            : AppTypography.b5M14.copyWith(color: AppColors.grayscale75),
                      ),
                    ),
                  ),
                ),
              ],
              indicator: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              indicatorPadding: const EdgeInsets.all(4.0),
              labelStyle: AppTypography.b6SB14,
              unselectedLabelStyle: AppTypography.b6SB14,
            ),
          ),
          // 페이지 뷰
          Expanded(
            child: PageView(
              controller: controller.pageController,
              onPageChanged: controller.onPageChanged,
              children: const [
                ChatRoomTab(),
                FriendsTab(),
              ],
            ),
          ),
        ],
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
          Assets.icons.logo.svg(height: 50),
          const Spacer(),
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
}

// 채팅방 탭
class ChatRoomTab extends StatelessWidget {
  const ChatRoomTab({super.key});

  // 더미 데이터: 채팅방 목록
  final List<Map<String, dynamic>> chatRooms = const [
    {
      'title': '토익 스터디',
      'memberCount': 14,
      'unreadCount': 2,
      'lastMessage': '저 오늘 스터디 가요!! 만나서 가실분...',
      'imageUrl': 'https://img.hankyung.com/photo/202406/01.37074220.1.jpg',
    },
    {
      'title': '우쿨렐레 소모임',
      'memberCount': 8,
      'unreadCount': 0,
      'lastMessage': '전 다이소에서 샀어요!',
      'imageUrl': 'https://cdn.eroun.net/news/photo/201904/5248_19828_3216.jpg',
    },
    {
      'title': '경영과학1 스터디',
      'memberCount': 10,
      'unreadCount': 0,
      'lastMessage': '6월 1일이요..',
      'imageUrl': 'https://m.ddaily.co.kr/2023/03/10/2023031018073482881_l.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: chatRooms.length,
      separatorBuilder: (context, index) =>
      const Divider(
        color: AppColors.grayscale25,
        height: 1,
        thickness: 1,
      ),
      itemBuilder: (context, index) {
        final chatRoom = chatRooms[index];
        return ListTile(
          contentPadding: const EdgeInsets.symmetric(
              horizontal: 16.0, vertical: 12.0),
          // 높이 증가
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Container(
              width: 56, // 기존보다 살짝 키움
              height: 56,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(chatRoom['imageUrl']),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          title: Row(
            children: [
              Text(
                chatRoom['title'],
                style: AppTypography.t3SB16,
              ),
              const SizedBox(width: 8),
              Text(
                '${chatRoom['memberCount']}',
                style: AppTypography.b3R12.copyWith(
                  color: AppColors.grayscale75,
                ),
              ),
            ],
          ),
          subtitle: Text(
            chatRoom['lastMessage'],
            style: AppTypography.b1R14,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          trailing: chatRoom['unreadCount'] > 0
              ? CircleAvatar(
            radius: 10,
            backgroundColor: Colors.red,
            child: Text(
              '${chatRoom['unreadCount']}',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
              : null,
          onTap: () {
            Get.to(() => const ChatPage());
          },
        );
      },
    );
  }
}

// 친구 탭
class FriendsTab extends StatelessWidget {
  const FriendsTab({super.key});

  // 더미 데이터: 친구 목록
  final List<Map<String, dynamic>> friends = const [
    {
      'name': '이채서',
      'status': '시각디자인학과',
      'imageUrl': 'https://cdn.eroun.net/news/photo/201904/5248_19828_3216.jpg',
    },
    {
      'name': '김정민',
      'status': '디지털콘텐츠학과',
      'imageUrl': null, // 프로필 사진 없음
    },
    {
      'name': '나경서',
      'status': '식품영양학과',
      'imageUrl': null,
    },
    {
      'name': '이언우',
      'status': '시각디자인학과, 산업디자인학과',
      'imageUrl': 'https://img.hankyung.com/photo/202406/01.37074220.1.jpg',
    },
    {
      'name': '정찬석',
      'status': '컴퓨터공학과',
      'imageUrl': 'https://m.ddaily.co.kr/2023/03/10/2023031018073482881_l.jpg',
    },
    {
      'name': '정지혜',
      'status': '시각디자인학과',
      'imageUrl': null,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: friends.length + 3,
      itemBuilder: (context, index) {
        if (index == 0) {
          // "내 모임 만들기" 버튼
          return _buildCreateGroupButton();
        } else if (index == 1) {
          final friend = friends.first;
          return Column(
            children: [
              Divider(thickness: 0.5, color: AppColors.grayscale50),
              ListTile(
                leading: CircleAvatar(
                  radius: 24,
                  backgroundImage: friend['imageUrl'] != null
                      ? NetworkImage(friend['imageUrl'])
                      : null,
                  child: friend['imageUrl'] == null
                      ? const Icon(Icons.person, size: 24, color: Colors.grey)
                      : null,
                ),
                title: Text(
                  friend['name'],
                  style: AppTypography.t3SB16,
                ),
                subtitle: Text(
                  friend['status'],
                  style: AppTypography.b1R14,
                ),
                trailing: IconButton(
                  icon:
                      const Icon(Icons.settings, color: AppColors.grayscale50),
                  onPressed: () {
                    // 더보기 메뉴 클릭 시 동작 (미구현)
                  },
                ),
                onTap: () {
                  // 친구 클릭 시 동작 (미구현)
                },
              ),
              Divider(thickness: 0.5, color: AppColors.grayscale50),
            ],
          );
        } else if (index == 2) {
          // 친구 수 헤더
          return Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Text(
              '친구 ${friends.length}',
              style: AppTypography.t4SB12.copyWith(
                color: AppColors.grayscale100,
              ),
            ),
          );
        }
        final friend = friends[index - 3];
        return ListTile(
          leading: CircleAvatar(
            radius: 24,
            backgroundImage: friend['imageUrl'] != null
                ? NetworkImage(friend['imageUrl'])
                : null,
            child: friend['imageUrl'] == null
                ? const Icon(Icons.person, size: 24, color: Colors.grey)
                : null,
          ),
          title: Text(
            friend['name'],
            style: AppTypography.t3SB16,
          ),
          subtitle: Text(
            friend['status'],
            style: AppTypography.b1R14,
          ),
          trailing: IconButton(
            icon: Assets.icons.friendTable.svg(width: 17),
            onPressed: () {
              // 더보기 메뉴 클릭 시 동작 (미구현)
            },
          ),
          onTap: () {
            // 친구 클릭 시 동작 (미구현)
          },
        );
      },
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
                Assets.icons.group.svg(width: 18),
                const SizedBox(width: 12),
                Expanded(
                  child: Text("친구 신청", style: AppTypography.t3SB16),
                ),
                Assets.icons.arrowRight.svg(height: 22),
                const SizedBox(width: 6),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
