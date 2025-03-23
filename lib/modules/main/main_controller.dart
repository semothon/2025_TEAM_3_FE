import 'package:get/get.dart';

import '../community/community_page.dart';
import '../explore/explore_page.dart';
import '../home/home_page.dart';
import '../my/my_page.dart';

class MainController extends GetxController {
  final selectedBottomIndex = 0.obs;

  final pages = [
    HomePage(),
    ExplorePage(),
    CommunityPage(),
    MyPage(),
  ];

  /// 이동 탭을 눌렀을 때 실행되는 함수
  Future<void> onItemTapped(int index) async {
    selectedBottomIndex.value = index;
  }

  @override
  Future<void> onInit() async {
    super.onInit();
  }
}
