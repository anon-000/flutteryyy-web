import 'package:flutter/material.dart';
import 'package:flutter_web_task/app_configs/app_colors.dart';

///
/// Created by Auro on 01/05/23 at 1:31 PM
///

class SideNavigationBar extends StatelessWidget {
  final int? currentIndex;
  final Function(int r)? onChanged;

  const SideNavigationBar({Key? key, this.currentIndex, this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Text(
              "Home",
              style: TextStyle(
                color: currentIndex == 0 ? AppColors.brightPrimary : null,
              ),
            ),
            leading: Icon(
              Icons.home,
              color: currentIndex == 0 ? AppColors.brightPrimary : null,
            ),
            trailing: Icon(
              Icons.keyboard_arrow_right_rounded,
              color: currentIndex == 0 ? AppColors.brightPrimary : null,
            ),
            onTap: () => onChanged!.call(0),
          ),
          ListTile(
            title: Text(
              "Explore",
              style: TextStyle(
                color: currentIndex == 1 ? AppColors.brightPrimary : null,
              ),
            ),
            leading: Icon(
              Icons.explore,
              color: currentIndex == 1 ? AppColors.brightPrimary : null,
            ),
            trailing: Icon(
              Icons.keyboard_arrow_right_rounded,
              color: currentIndex == 1 ? AppColors.brightPrimary : null,
            ),
            onTap: () => onChanged!.call(1),
          ),
          ListTile(
            title: Text(
              "Profile",
              style: TextStyle(
                color: currentIndex == 2 ? AppColors.brightPrimary : null,
              ),
            ),
            leading: Icon(
              Icons.person,
              color: currentIndex == 2 ? AppColors.brightPrimary : null,
            ),
            trailing: Icon(
              Icons.keyboard_arrow_right_rounded,
              color: currentIndex == 2 ? AppColors.brightPrimary : null,
            ),
            onTap: () => onChanged!.call(2),
          ),
        ],
      ),
    );
  }
}
