import 'package:get/get.dart';
import 'package:team_3_frontend/modules/explore/explore_controller.dart';
import 'package:team_3_frontend/modules/home/home_controller.dart';
import 'package:team_3_frontend/modules/my/my_controller.dart';

import 'main_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainController>(() => MainController(), fenix: true);
    Get.lazyPut<HomeController>(() => HomeController(), fenix: true);
    Get.lazyPut<ExploreController>(() => ExploreController(), fenix: true);
    Get.lazyPut<MyController>(() => MyController(), fenix: true);
  }
}
