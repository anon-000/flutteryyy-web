import 'package:flutter_web_task/global_utils/middlewares/auth_middleware.dart';
import 'package:flutter_web_task/pages/dashboard/bindings/dashboard_binding.dart';
import 'package:flutter_web_task/pages/dashboard/children/explore_page.dart';
import 'package:flutter_web_task/pages/dashboard/children/home_page.dart';
import 'package:flutter_web_task/pages/dashboard/children/profile_page.dart';
import 'package:flutter_web_task/pages/dashboard/dashboard_page.dart';
import 'package:flutter_web_task/pages/login/bindings/login_binding.dart';
import 'package:flutter_web_task/pages/login/login_page.dart';
import 'package:flutter_web_task/pages/settings/settings_page.dart';
import 'package:flutter_web_task/pages/unknown/unknown_page.dart';
import 'package:get/get.dart';

///
/// Created by Auro on 01/05/23 at 12:11 AM
///

class AppPages {
  static final unknownRoute = GetPage(
      name: UnKnownPage.routeName,
      page: () => const UnKnownPage(),
      participatesInRootNavigator: true,
      preventDuplicates: true);
  static final pages = [
    GetPage(
      name: LoginPage.routeName,
      page: () => LoginPage(),
      binding: LoginBinding(),
      participatesInRootNavigator: true,
    ),
    GetPage(
      name: DashboardPage.routeName,
      participatesInRootNavigator: true,
      preventDuplicates: true,
      transition: Transition.noTransition,
      middlewares: [
        AuthCheckMiddleware(),
      ],
      page: () => DashboardPage(),
      binding: DashboardBinding(),
      title: null,
      children: [
        GetPage(
          name: HomePage.routeName,
          title: 'Home Page',
          page: () => const HomePage(),
          participatesInRootNavigator: false,
          transition: Transition.noTransition,
        ),
        GetPage(
          name: ExplorePage.routeName,
          title: 'Explore Page',
          page: () => const ExplorePage(),
          participatesInRootNavigator: false,
          transition: Transition.noTransition,
        ),
        GetPage(
          name: ProfilePage.routeName,
          title: 'Profile Page',
          page: () => const ProfilePage(),
          participatesInRootNavigator: false,
          transition: Transition.noTransition,
        ),
      ],
    ),
    GetPage(
      name: SettingsPage.routeName,
      page: () => const SettingsPage(),
      participatesInRootNavigator: true,
      middlewares: [
        AuthCheckMiddleware(),
      ],
    ),
  ];
}
