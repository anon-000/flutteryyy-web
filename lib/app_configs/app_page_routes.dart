import 'package:flutter_web_task/global_utils/middlewares/auth_middleware.dart';
import 'package:flutter_web_task/pages/dashboard/dashboard_page.dart';
import 'package:flutter_web_task/pages/login/login_page.dart';
import 'package:flutter_web_task/pages/settings/settings_page.dart';
import 'package:flutter_web_task/pages/unknown/unknown_page.dart';
import 'package:get/get.dart';

///
/// Created by Auro on 01/05/23 at 12:11 AM
///

class AppPageRoutes {
  static final unknownRoute = GetPage(
      name: UnKnownPage.routeName,
      page: () => const UnKnownPage(),
      participatesInRootNavigator: true,
      preventDuplicates: true);
  static final routes = [
    GetPage(
      name: LoginPage.routeName,
      page: () => const LoginPage(),
      participatesInRootNavigator: true,
    ),
    GetPage(
      name: DashboardPage.routeName,
      page: () => const DashboardPage(),
      participatesInRootNavigator: true,
      preventDuplicates: true,
      transition: Transition.noTransition,
      middlewares: [
        AuthCheckMiddleware(),
      ],
    ),
    GetPage(
      name: SettingsPage.routeName,
      page: () => const SettingsPage(),
      participatesInRootNavigator: true,
    ),
  ];
}
