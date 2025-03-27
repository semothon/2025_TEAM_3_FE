import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'routes/app_pages.dart';
import 'routes/app_routes.dart';
import 'theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: '소모임 앱',
      initialRoute: Routes.login,
      getPages: AppRoutes.routes,
      theme: AppTheme.themeData,
      debugShowCheckedModeBanner: false,
    );
  }
}
