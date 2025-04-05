import 'package:get/get.dart';
import 'package:team_3_frontend/modules/register/register_controller.dart';
import 'package:team_3_frontend/modules/register/register_input_info_page.dart';
import 'package:team_3_frontend/modules/study_detail/study_detail_page.dart';
import '../modules/login/login_binding.dart';
import '../modules/login/login_page.dart';
import '../modules/main/main_binding.dart';
import '../modules/main/main_page.dart';
import '../modules/register/register_page.dart';
import '../modules/study_detail/study_detail_binding.dart';
import 'app_routes.dart';

class AppRoutes {
  static final routes = [
    GetPage(
      name: Routes.main,
      page: () => MainPage(),
      binding: MainBinding(),
    ),
    GetPage(
      name: Routes.login,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.register,
      page: () => RegisterPage(),
    ),
    GetPage(
      name: Routes.registerInput,
      page: () => RegisterInputInfoPage(),
    ),
    GetPage(
      name: Routes.studyDetail,
      page: () => StudyDetailPage(),
      binding: StudyDetailBinding(),
    ),
  ];
}
