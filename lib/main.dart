import 'package:flutter/material.dart';
import 'package:flutter_web_task/app_configs/app_page_routes.dart';
import 'package:flutter_web_task/app_configs/app_themes.dart';
import 'package:flutter_web_task/global_utils/shared_preferences/shared_preferences_helper.dart';
import 'package:flutter_web_task/pages/dashboard/dashboard_page.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferenceHelper.preferences = await SharedPreferences.getInstance();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Web',
      theme: AppThemes.brightTheme,
      themeMode: ThemeMode.light,
      getPages: AppPages.pages,
      darkTheme: AppThemes.brightTheme,
      initialRoute: DashboardPage.routeName,
      unknownRoute: AppPages.unknownRoute,
      defaultTransition: Transition.fade,
    );
  }
}
