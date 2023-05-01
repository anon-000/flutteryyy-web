import 'package:flutter/material.dart';
import 'package:flutter_web_task/app_configs/app_colors.dart';

///
/// Created by Auro on 01/05/23 at 3:43 PM
///

mixin AppThemes {
  // static const int primaryValue = 0xFFE51807;
  static const Color background = Color(0xfff3f3f3);
  static const Color canvas = Color(0xfff3f3f3);

  static final brightTheme = ThemeData(
    fontFamily: "Asap",
    canvasColor: canvas,
    scaffoldBackgroundColor: const Color(0xfff3f3f3),
    primaryColor: AppColors.brightPrimary,
    cardColor: canvas,
    dialogBackgroundColor: canvas,
    textSelectionTheme: TextSelectionThemeData(
        cursorColor: AppColors.brightPrimary,
        selectionHandleColor: AppColors.brightPrimary,
        selectionColor: AppColors.brightPrimary.withOpacity(0.3)),
    iconTheme: const IconThemeData(color: Colors.white),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    brightness: Brightness.light,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: AppColors.brightPrimary),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: AppColors.brightPrimary,
        foregroundColor: Colors.white),
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: Colors.transparent,
      titleTextStyle: TextStyle(
        fontSize: 20,
        fontFamily: "Asap",
        fontWeight: FontWeight.w700,
        color: Colors.white,
      ),
      iconTheme: IconThemeData(color: Colors.black),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(foregroundColor: AppColors.brightPrimary),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
          padding: MaterialStateProperty.all(
              const EdgeInsets.symmetric(vertical: 22, horizontal: 26)),
          foregroundColor: MaterialStateProperty.all(Colors.white),
          backgroundColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed)) {
                return AppColors.brightPrimary.shade900;
              } else if (states.contains(MaterialState.disabled)) {
                return Colors.grey.shade500;
              } else if (states.contains(MaterialState.hovered)) {
                return AppColors.brightPrimary.shade300;
              }
              return AppColors.brightPrimary;
            },
          )),
    ),
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: AppColors.brightPrimary,
      cardColor: canvas,
      backgroundColor: background,
      brightness: Brightness.light,
    ),
  );
}
