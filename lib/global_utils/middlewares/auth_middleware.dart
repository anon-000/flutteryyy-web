import 'package:flutter/material.dart';
import 'package:flutter_web_task/global_controllers/user_controller.dart';
import 'package:flutter_web_task/global_utils/shared_preferences/shared_preferences_helper.dart';
import 'package:flutter_web_task/pages/login/login_page.dart';
import 'package:get/get.dart';

///
/// Created by Auro on 01/05/23 at 12:42 AM
///

class AuthCheckMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    final token = SharedPreferenceHelper.accessToken;
    if (token != null) {
      final userController = Get.isRegistered<UserController>()
          ? Get.find<UserController>()
          : Get.put<UserController>(UserController(), permanent: true);
      final user = userController.state;
      if (user == null) {
        return const RouteSettings(name: LoginPage.routeName);
      } else {
        return RouteSettings(name: route);
      }
    } else {
      return const RouteSettings(name: LoginPage.routeName);
    }
  }
}
