import 'package:flutter/material.dart';
import 'package:flutter_web_task/app_configs/app_colors.dart';
import 'package:fluttertoast/fluttertoast.dart';

///
/// Created by Auro on 01/05/23 at 12:53 PM
///

mixin SnackBarHelper {
  static Future<void> show(String message, {isLong = false}) async {
    Fluttertoast.showToast(
        msg: message,
        toastLength: isLong ? Toast.LENGTH_LONG : Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 2,
        webShowClose: true,
        backgroundColor: AppColors.primary,
        textColor: Colors.white,
        webBgColor: "#000000",
        fontSize: 16.0);
  }
}
