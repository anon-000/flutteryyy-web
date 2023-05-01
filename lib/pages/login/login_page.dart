import 'package:flutter/material.dart';
import 'package:flutter_web_task/app_configs/app_colors.dart';
import 'package:flutter_web_task/app_configs/app_decorations.dart';
import 'package:flutter_web_task/global_utils/others/app_validators.dart';
import 'package:flutter_web_task/pages/login/controllers/login_controller.dart';
import 'package:flutter_web_task/widgets/app_primary_button.dart';
import 'package:get/get.dart';

///
/// Created by Auro on 01/05/23 at 12:14 AM
///

class LoginPage extends GetResponsiveView<LoginController> {
  static const routeName = '/login';

  LoginPage({super.key});

  @override
  Widget? desktop() {
    double height = Get.height;
    return Scaffold(
      body: SizedBox(
        height: height,
        child: Row(
          children: [
            Expanded(
              child: Image.asset(
                "assets/icons/wallpaperflare.com_wallpaper-3.jpg",
                fit: BoxFit.cover,
                height: double.infinity,
              ),
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    onChanged: controller.onEmailSaved,
                    validator: (data) => AppFormValidators.validateMail(data),
                    decoration: AppDecorations.textFieldDecoration().copyWith(
                      hintText: "example@mail.com",
                    ),
                    keyboardType: TextInputType.emailAddress,
                    scrollPadding: const EdgeInsets.only(bottom: 40),
                  ),
                  TextFormField(
                    obscureText: controller.isObscure.value,
                    textInputAction: TextInputAction.done,
                    validator: (data) => AppFormValidators.validateEmpty(data),
                    onChanged: controller.onPasswordSaved,
                    decoration: AppDecorations.textFieldDecoration().copyWith(
                      hintText: "enter your password",
                      suffixIcon: IconButton(
                        icon: Icon(
                          controller.isObscure.value
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: AppColors.labelColor,
                          size: 22,
                        ),
                        onPressed: controller.visibilityChange,
                      ),
                    ),
                  ),
                  const SizedBox(height: 28),
                  AppPrimaryButton(
                    key: controller.buttonKey,
                    onPressed: controller.proceed,
                    child: const Text("Login"),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
