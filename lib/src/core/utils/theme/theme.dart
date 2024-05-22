import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketplace/src/core/utils/theme/app_colors.dart';

ThemeData lightTheme() => ThemeData(
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      elevation: 1,
      selectedItemColor: AppColors.violent,
      unselectedItemColor: Colors.grey,
      type: BottomNavigationBarType.fixed,
    ),
    splashColor: AppColors.pink,
    highlightColor: AppColors.pink,
    dividerTheme: const DividerThemeData(color: Colors.grey),
    inputDecorationTheme: const InputDecorationTheme(),
    brightness: Brightness.light,
    useMaterial3: false,
    scaffoldBackgroundColor: AppColors.white,
    appBarTheme: const AppBarTheme(color: AppColors.white, elevation: 0),
    primaryColorLight: AppColors.primaryLightColorColor,
    textTheme: Typography.englishLike2014.apply(fontSizeFactor: 1.sp));

OutlineInputBorder outlineBorder() {
  return OutlineInputBorder(
      borderSide: const BorderSide(color: AppColors.pink),
      borderRadius: BorderRadius.circular(25).r);
}
