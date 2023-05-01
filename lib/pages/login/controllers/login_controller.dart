import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_web_task/global_utils/others/snackbar_helper.dart';
import 'package:flutter_web_task/pages/dashboard/dashboard_page.dart';
import 'package:flutter_web_task/widgets/app_primary_button.dart';
import 'package:get/get.dart';

///
/// Created by Auro on 01/05/23 at 12:27 PM
///

class LoginController extends GetxController {
  String _email = '';
  String _password = '';
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final GlobalKey<AppPrimaryButtonState> buttonKey =
      GlobalKey<AppPrimaryButtonState>();
  late Rx<AutovalidateMode> autoValidateMode;
  String? redirectPath;
  RxBool isObscure = RxBool(true);

  @override
  void onInit() {
    super.onInit();
    autoValidateMode = Rx<AutovalidateMode>(AutovalidateMode.disabled);
    final Map<String, dynamic> map = Get.parameters;
    if (map['parent'] != null) {
      redirectPath = map['parent'];
    }
  }

  @override
  void dispose() {
    autoValidateMode.close();
    isObscure.close();
    super.dispose();
  }

  void onEmailSaved(String? newValue) {
    _email = newValue!.trim();
  }

  void onPasswordSaved(String? newValue) {
    _password = newValue!.trim();
  }

  void visibilityChange() {
    isObscure.value = !isObscure.value;
    update();
  }

  void proceed() async {
    final state = formKey.currentState;
    if (state == null) return;
    if (!state.validate()) {
      autoValidateMode.value = AutovalidateMode.always;
    } else {
      state.save();
      buttonKey.currentState?.showLoader();
      try {
        if (_email == 'abc@gmail.com' && _password == '12345') {
          buttonKey.currentState?.hideLoader();

          /// success
          if (redirectPath != null) {
            /// go to redirect path
            Get.offAllNamed(redirectPath!);
          } else {
            /// go to dashboard
            Get.offAllNamed(DashboardPage.routeName);
          }
        } else {
          /// invalid login
          buttonKey.currentState?.hideLoader();
          SnackBarHelper.show("Invalid email or password");
        }
      } catch (e) {
        buttonKey.currentState?.hideLoader();
        log("$e");
      }
    }
  }
}
