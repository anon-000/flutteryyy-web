import 'package:flutter/material.dart';
import 'package:flutter_web_task/app_configs/app_colors.dart';
import 'package:flutter_web_task/pages/dashboard/dashboard_page.dart';

///
/// Created by Auro on 01/05/23 at 1:31 PM
///

class BottomNavBar extends StatelessWidget {
  final Function(int)? onChanged;

  const BottomNavBar({super.key, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: dashboardIndexNotifier,
      builder: (ctx, value, _) => Container(
        height: 69,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: const Color(0xff4F4F4F).withOpacity(0.05),
              offset: const Offset(0, -4),
              blurRadius: 20,
              spreadRadius: 0,
            ),
          ],
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: dashboardIndexNotifier.value,
          selectedItemColor: const Color(0xff333333),
          onTap: onChanged,
          backgroundColor: Colors.white,
          elevation: 0,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
          unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w500),
          selectedFontSize: 12,
          unselectedFontSize: 12,
          items: [
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 6, top: 1),
                child: Icon(
                  Icons.home,
                  color: dashboardIndexNotifier.value == 0
                      ? AppColors.brightPrimary
                      : null,
                ),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 6, top: 1),
                child: Icon(
                  Icons.explore,
                  color: dashboardIndexNotifier.value == 1
                      ? AppColors.brightPrimary
                      : null,
                ),
              ),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 6, top: 1),
                child: Icon(
                  Icons.person,
                  color: dashboardIndexNotifier.value == 2
                      ? AppColors.brightPrimary
                      : null,
                ),
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
