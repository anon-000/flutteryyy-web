import 'package:flutter/material.dart';
import 'package:flutter_web_task/app_configs/app_page_routes.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Web',
      themeMode: ThemeMode.light,
      getPages: AppPageRoutes.routes,
      unknownRoute: AppPageRoutes.unknownRoute,
    );
  }
}
