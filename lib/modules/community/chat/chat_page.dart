import 'package:flutter/material.dart';
import 'package:team_3_frontend/theme/app_colors.dart';
import 'package:team_3_frontend/theme/app_typography.dart';

import '../../../gen/assets.gen.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    final messages = [
      {
        'text': '저 오늘 공강이라 시간이 비어서 잠깐 공부하려는데 혹시 같이 하실분 계신가용',
        'isMine': false,
        'sender': '김서현',
        'profileImg': 'https://img.hankyung.com/photo/202406/01.37074220.1.jpg',
        'unreadCount': 8,
      },
      {
        'text': '저요!!',
        'isMine': true,
        'unreadCount': 8,
      },
      {
        'text': '언제부터 되세요?',
        'isMine': false,
        'sender': '김서현',
        'profileImg': 'https://img.hankyung.com/photo/202406/01.37074220.1.jpg',
        'unreadCount': 8,
      },
      {
        'text': '지금 학교 앞 스벅이라',
        'isMine': true,
        'unreadCount': 10,
      },
      {
        'text': '이쪽으로 오실래요??',
        'isMine': true,
        'unreadCount': 10,
      },
      {
        'text': '네!! 지금 갈게요',
        'isMine': false,
        'sender': '김서현',
        'profileImg': 'https://img.hankyung.com/photo/202406/01.37074220.1.jpg',
        'unreadCount': 10,
      },
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        leading: IconButton(
          icon: Assets.icons.arrowLeft.svg(),
          onPressed: () => Navigator.pop(context),
        ),
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('토익 스터디', style: TextStyle(color: Colors.black)),
            const SizedBox(width: 6),
            Text('14',
                style: AppTypography.b2R13.copyWith(color: AppColors.grayscale75)),
          ],
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // 공지
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: AppColors.grayscale0,
              border: Border.all(color: AppColors.grayscale25),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                const Icon(Icons.push_pin, color: AppColors.point, size: 22),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    "채팅방 공지",
                    style: AppTypography.b6SB14,
                  ),
                ),
                const Icon(Icons.arrow_drop_down),
              ],
            ),
          ),

          // 날짜
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: Text("2025/03/30",
                style: AppTypography.b3R12.copyWith(color: AppColors.grayscale100)),
          ),

          // 채팅
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final msg = messages[index];
                final isMine = msg['isMine'] as bool;
                final message = msg['text'] as String;
                final unread = msg['unreadCount'] as int ?? 0;
                final profileImg = msg['profileImg'];
                final sender = msg['sender'];

                final alignment = isMine ? Alignment.centerRight : Alignment.centerLeft;

                return Container(
                  margin: const EdgeInsets.symmetric(vertical: 6),
                  alignment: alignment,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: isMine ? MainAxisAlignment.end : MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      if (!isMine)
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: profileImg != null ? NetworkImage(profileImg as String) : null,
                          backgroundColor: AppColors.grayscale25,
                        ),
                      const SizedBox(width: 8),

                      // 채팅 말풍선
                      ConstrainedBox(
                        constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.66),
                        child: Column(
                          crossAxisAlignment:
                          isMine ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                          children: [
                            if (!isMine && sender != null)
                              Padding(
                                padding: const EdgeInsets.only(bottom: 4, left: 2),
                                child: Text(sender as String,
                                    style: AppTypography.b3R12.copyWith(color: AppColors.grayscale75)),
                              ),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                              decoration: BoxDecoration(
                                color: isMine
                                    ? AppColors.box1
                                    : AppColors.grayscale0,
                                border: Border.all(
                                  color: isMine ? AppColors.box1Border : AppColors.grayscale50,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Text(message, style: AppTypography.b1R14),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 4),

                      // 읽지 않은 사람 수
                      if (unread > 0)
                        Text(
                          '$unread',
                          style: AppTypography.b3R12.copyWith(color: Colors.grey),
                        ),
                    ],
                  ),
                );
              },
            ),
          ),

          // 입력창
          Container(
            margin: const EdgeInsets.only(bottom: 14),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: AppColors.background,
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: AppColors.grayscale0,
                borderRadius: BorderRadius.circular(24),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: '  채팅을 입력해주세요.',
                  hintStyle: AppTypography.b2R13.copyWith(
                    color: AppColors.grayscale75,
                    fontSize: 14,
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 10),
                  border: InputBorder.none,
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Assets.icons.chatSend.svg(
                      width: 20,
                      height: 20,
                    ),
                  ),
                  suffixIconConstraints: const BoxConstraints(
                    minWidth: 32,
                    minHeight: 32,
                    maxWidth: 32,
                    maxHeight: 32,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}