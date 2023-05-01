import 'package:flutter/material.dart';
import 'package:flutter_web_task/pages/settings/settings_page.dart';
import 'package:get/get.dart';

///
/// Created by Auro on 01/05/23 at 2:39 AM
///

class ProfilePage extends StatelessWidget {
  static const routeName = '/profile';

  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Profile"),
          TextButton(
            onPressed: () {
              Get.toNamed(SettingsPage.routeName);
            },
            child: const Text('Open settings'),
          ),
        ],
      ),
    );
  }
}
