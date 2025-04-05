import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team_3_frontend/theme/app_colors.dart';
import 'package:team_3_frontend/theme/app_typography.dart';
import '../../gen/assets.gen.dart';
import 'my_controller.dart';
import 'package:flutter/cupertino.dart';

class MyPage extends GetView<MyController> {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildProfileCard(),
              const SizedBox(height: 20),
              _buildSectionTitle('설정'),
              _buildToggleTile('알림', controller.isAlarmOn),
              _buildToggleTile('마케팅 수신', controller.isMarketingOn),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Divider(
                    height: 1, thickness: 1, color: AppColors.grayscale50),
              ),
              _buildSectionTitle('계정'),
              _buildActionTile('회원 탈퇴', controller.onDeleteAccount),
              _buildActionTile('로그아웃', controller.onLogout),
            ],
          ),
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

  Widget _buildProfileCard() {
    final user = controller.user;
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.grayscale0,
          border: Border.all(color: AppColors.grayscale50),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 6,
              offset: const Offset(0, 2),
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 34,
                    backgroundImage: user.value.profileImg != null
                        ? NetworkImage(user.value.profileImg!)
                        : null,
                    backgroundColor: AppColors.grayscale25,
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                user.value.name,
                                style:
                                    AppTypography.t1B20.copyWith(fontSize: 20),
                              ),
                              const SizedBox(height: 4),
                              Text(user.value.department,
                                  style: AppTypography.b3R12
                                      .copyWith(color: AppColors.grayscale100)),
                              const SizedBox(height: 2),
                              Text(user.value.loginId,
                                  style: AppTypography.b3R12
                                      .copyWith(color: AppColors.grayscale100)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: IconButton(
                            icon: Assets.icons.setting.svg(width: 20),
                            onPressed: () {
                              // TODO: 설정 페이지 이동 또는 설정 다이얼로그 띄우기
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              const Divider(
                  height: 1, thickness: 1, color: AppColors.grayscale50),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildCountInfo('내 모임', '3'),
                  _buildCountInfo('개인 기록', '31'),
                  _buildCountSvgIcon(
                    '내 시간표',
                    Assets.icons.timetable,
                    onTap: () {
                      // 시간표 페이지로 이동
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCountInfo(String label, String count, {String suffix = '개'}) {
    return Column(
      children: [
        Text(label, style: AppTypography.b3R12.copyWith(fontSize: 14)),
        const SizedBox(height: 4),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: count,
                style: AppTypography.t0B24.copyWith(color: AppColors.point),
              ),
              TextSpan(
                text: suffix,
                style:
                    AppTypography.b2R13.copyWith(color: AppColors.grayscale100),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCountSvgIcon(String label, SvgGenImage icon,
      {VoidCallback? onTap}) {
    return Column(
      children: [
        Text(label, style: AppTypography.b3R12.copyWith(fontSize: 14)),
        const SizedBox(height: 4),
        Material(
          color: Colors.transparent, // 배경 투명하게
          child: InkWell(
            customBorder: const CircleBorder(),
            onTap: onTap,
            child: Padding(
              padding: const EdgeInsets.all(6.0), // 터치 영역 살짝 여유 줌
              child: icon.svg(width: 20),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Text(title,
          style: AppTypography.t4SB12.copyWith(color: AppColors.grayscale100)),
    );
  }

  Widget _buildToggleTile(String label, RxBool toggleValue) {
    return Obx(() => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(label, style: AppTypography.b1R14.copyWith(fontSize: 16)),
              Transform.scale(
                scale: 0.9, // 조금 작게
                child: CupertinoSwitch(
                  value: toggleValue.value,
                  onChanged: (value) => toggleValue.value = value,
                  activeColor: AppColors.point,
                  trackColor: AppColors.grayscale25,
                ),
              ),
            ],
          ),
        ));
  }

  Widget _buildActionTile(String label, VoidCallback onTap) {
    return ListTile(
      title: Text(label, style: AppTypography.b1R14.copyWith(fontSize: 16)),
      onTap: onTap,
    );
  }
}
