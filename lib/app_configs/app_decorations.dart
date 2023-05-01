import 'package:flutter/material.dart';
import 'package:flutter_web_task/app_configs/app_colors.dart';

///
/// Created by Auro on 01/05/23 at 5:18 PM
///

mixin AppDecorations {
  static const introLinearGradient = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color.fromRGBO(248, 249, 255, 1),
        Color.fromRGBO(248, 249, 255, 0.83),
        Color.fromRGBO(248, 249, 255, 1),
      ]);

  static LinearGradient purpleGrad = const LinearGradient(
    colors: [
      Color(0xff9B92FF),
      Color(0xff271BA4),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static LinearGradient draftGrad = LinearGradient(
    colors: [
      const Color(0xff2F23AA).withOpacity(0.8),
      const Color(0xff6F65DC).withOpacity(0.8),
      const Color(0xffBAB5EE).withOpacity(0.38),
      Colors.grey.shade200.withOpacity(0.18),
    ],
    begin: Alignment.centerRight,
    end: Alignment.centerLeft,
  );

  static InputDecoration textFieldDecoration({double radius = 12}) {
    return InputDecoration(
        // fillColor: Colors.grey.shade200,
        filled: false,
        counterText: '',
        hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
        contentPadding: const EdgeInsets.fromLTRB(20.0, 16.0, 20.0, 16.0),
        disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius),
            borderSide: const BorderSide(
              color: AppColors.borderColor,
              width: 1.2,
            )),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius),
            borderSide: const BorderSide(
              color: AppColors.borderColor,
              width: 1.2,
            )),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius),
            borderSide: const BorderSide(
              color: AppColors.borderColor,
              width: 1.2,
            )),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius),
            borderSide: const BorderSide(
              color: AppColors.borderColor,
              width: 1.2,
            )));
  }
}
