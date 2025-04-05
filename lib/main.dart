import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team_3_frontend/data/services/auth_service.dart';
import 'routes/app_pages.dart';
import 'routes/app_routes.dart';
import 'theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(AuthService());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  AuthService authService = Get.find<AuthService>();
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: '소모임 앱',
      initialRoute: (authService.token != null) ? Routes.main : Routes.login,
      getPages: AppRoutes.routes,
      theme: AppTheme.themeData,
      debugShowCheckedModeBanner: false,
    );
  }
}
