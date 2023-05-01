import 'package:flutter_web_task/pages/login/controllers/login_controller.dart';
import 'package:get/get.dart';

///
/// Created by Auro on 01/05/23 at 5:08 PM
///

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(LoginController());
  }
}
