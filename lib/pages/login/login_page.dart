import 'package:flutter/material.dart';
import 'package:flutter_web_task/app_configs/app_colors.dart';
import 'package:flutter_web_task/app_configs/app_decorations.dart';
import 'package:flutter_web_task/global_utils/others/app_validators.dart';
import 'package:flutter_web_task/pages/login/controllers/login_controller.dart';
import 'package:flutter_web_task/widgets/app_primary_button.dart';
import 'package:flutter_web_task/widgets/my_image.dart';
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
            const Expanded(
              child: MyImage(
                "https://wallpaperaccess.com/full/811658.jpg",
                fit: BoxFit.cover,
                height: double.infinity,
              ),
            ),
            Expanded(
              child: Obx(
                () => Form(
                  key: controller.formKey,
                  autovalidateMode: controller.autoValidateMode.value,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/icons/logo-removebg-preview.png",
                          height: 300,
                          width: 300,
                        ),
                        // const SizedBox(height: 16),
                        TextFormField(
                          textInputAction: TextInputAction.next,
                          onChanged: controller.onEmailSaved,
                          validator: (data) =>
                              AppFormValidators.validateMail(data),
                          decoration:
                              AppDecorations.textFieldDecoration().copyWith(
                            hintText: "example@mail.com",
                          ),
                          keyboardType: TextInputType.emailAddress,
                          scrollPadding: const EdgeInsets.only(bottom: 40),
                        ),
                        const SizedBox(height: 16),
                        TextFormField(
                          obscureText: controller.isObscure.value,
                          textInputAction: TextInputAction.done,
                          validator: (data) =>
                              AppFormValidators.validateEmpty(data),
                          onChanged: controller.onPasswordSaved,
                          decoration:
                              AppDecorations.textFieldDecoration().copyWith(
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
                        const SizedBox(height: 20),
                        SizedBox(
                          width: double.infinity,
                          child: AppPrimaryButton(
                            key: controller.buttonKey,
                            onPressed: controller.proceed,
                            child: const Text("Login"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget? phone() {
    return Scaffold(
      body: Obx(
        () => Form(
          key: controller.formKey,
          autovalidateMode: controller.autoValidateMode.value,
          child: ListView(
            padding: const EdgeInsets.all(16.0),
            children: [
              Image.asset(
                "assets/icons/logo-removebg-preview.png",
                height: 300,
                width: 300,
              ),
              // const SizedBox(height: 16),
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
              const SizedBox(height: 16),
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
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: AppPrimaryButton(
                  key: controller.buttonKey,
                  onPressed: controller.proceed,
                  child: const Text("Login"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget? tablet() {
    return phone();
  }
}
