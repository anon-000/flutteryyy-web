import 'package:flutter/material.dart';
import 'package:flutter_web_task/pages/dashboard/children/explore_page.dart';
import 'package:flutter_web_task/pages/dashboard/children/home_page.dart';
import 'package:flutter_web_task/pages/dashboard/children/profile_page.dart';
import 'package:flutter_web_task/pages/dashboard/controllers/dashboard_controller.dart';
import 'package:flutter_web_task/pages/dashboard/widgets/bottom_nav_bar.dart';
import 'package:flutter_web_task/pages/dashboard/widgets/side_nav_bar.dart';
import 'package:get/get.dart';

///
/// Created by Auro on 01/05/23 at 12:14 AM
///
ValueNotifier<int> dashboardIndexNotifier = ValueNotifier(0);

class DashboardPage extends GetResponsiveView<DashboardController> {
  static const routeName = '/dashboard';

  DashboardPage({super.key});

  @override
  Widget? desktop() {
    return GetRouterOutlet.builder(
      routerDelegate: Get.nestedKey(DashboardPage.routeName),
      builder: (context) {
        final delegate = context.navigation;
        final currentLocation = context.location;
        if (currentLocation
                .startsWith(DashboardPage.routeName + ExplorePage.routeName) ==
            true) {
          dashboardIndexNotifier.value = 1;
        }
        if (currentLocation
                .startsWith(DashboardPage.routeName + ProfilePage.routeName) ==
            true) {
          dashboardIndexNotifier.value = 2;
        }
        return Scaffold(
          body: SafeArea(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SideNavigationBar(
                  currentIndex: dashboardIndexNotifier.value,
                  onChanged: (value) {
                    dashboardIndexNotifier.value = value;
                    switch (value) {
                      case 0:
                        delegate.toNamed(
                            DashboardPage.routeName + HomePage.routeName);
                        break;
                      case 1:
                        delegate.toNamed(
                            DashboardPage.routeName + ExplorePage.routeName);
                        break;
                      case 2:
                        delegate.toNamed(
                            DashboardPage.routeName + ProfilePage.routeName);
                        break;
                      default:
                    }
                  },
                ),
                Expanded(
                  child: GetRouterOutlet(
                    anchorRoute: DashboardPage.routeName,
                    initialRoute: DashboardPage.routeName + HomePage.routeName,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget? phone() {
    return GetRouterOutlet.builder(
      routerDelegate: Get.nestedKey(null),
      builder: (context) {
        final delegate = context.navigation;
        final currentLocation = context.location;
        if (currentLocation
                .startsWith(DashboardPage.routeName + ExplorePage.routeName) ==
            true) {
          dashboardIndexNotifier.value = 1;
        }
        if (currentLocation
                .startsWith(DashboardPage.routeName + ProfilePage.routeName) ==
            true) {
          dashboardIndexNotifier.value = 2;
        }
        return Scaffold(
          bottomNavigationBar: BottomNavBar(
            onChanged: (value) {
              dashboardIndexNotifier.value = value;
              switch (value) {
                case 0:
                  delegate
                      .toNamed(DashboardPage.routeName + HomePage.routeName);
                  break;
                case 1:
                  delegate
                      .toNamed(DashboardPage.routeName + ExplorePage.routeName);
                  break;
                case 2:
                  delegate
                      .toNamed(DashboardPage.routeName + ProfilePage.routeName);
                  break;
                default:
              }
            },
          ),
          body: GetRouterOutlet(
            anchorRoute: DashboardPage.routeName,
            initialRoute: DashboardPage.routeName + HomePage.routeName,
          ),
        );
      },
    );
  }

  @override
  Widget? tablet() {
    return phone();
  }
}
