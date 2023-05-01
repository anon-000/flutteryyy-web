import 'package:flutter_web_task/data_models/user.dart';
import 'package:get/get.dart';

///
/// Created by Auro on 01/05/23 at 12:44 AM
///

class UserController extends GetxController with StateMixin<User?> {
  updateUser(User? user) {
    if (user == null) {
      change(GetStatus.success(null));
      return;
    }
    change(GetStatus.loading());
    change(GetStatus.success(user));
  }
}
