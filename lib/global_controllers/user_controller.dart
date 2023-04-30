import 'package:flutter_web_task/data_models/user.dart';
import 'package:get/get.dart';

///
/// Created by Auro on 01/05/23 at 12:44 AM
///

class UserController extends GetxController with StateMixin<User?> {
  // @override
  // void onInit() {
  //   super.onInit();
  //
  //   final user = SharedPreferenceHelper.user?.user;
  //   change(user, status: user == null ? RxStatus.empty() : RxStatus.success());
  // }

  updateUser(User? user) {
    if (user == null) {
      change(null, status: RxStatus.success());
      return;
    }
    change(null, status: RxStatus.loading());
    change(user, status: RxStatus.success());
  }
}
