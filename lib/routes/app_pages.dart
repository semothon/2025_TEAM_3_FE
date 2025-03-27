import 'package:get/get.dart';
import '../modules/login/login_binding.dart';
import '../modules/login/login_page.dart';
import '../modules/main/main_binding.dart';
import '../modules/main/main_page.dart';
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
  ];
}
