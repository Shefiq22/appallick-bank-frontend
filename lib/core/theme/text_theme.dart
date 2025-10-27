import 'package:bank_app/core/constants/app_color.dart';
import 'package:bank_app/core/constants/font_family.dart';
import 'package:flutter/material.dart';

class AppTextTheme {
  static final lightTextTheme = TextTheme(
    titleSmall: TextStyle(
      fontFamily: FontFamily.poppins,
      fontSize: 16,
      color: AppColor.dark,
    ),
    titleMedium: TextStyle(
      fontFamily: FontFamily.poppins,
      fontSize: 20,
      color: AppColor.dark,
    ),
    titleLarge: TextStyle(
      fontFamily: FontFamily.poppins,
      fontSize: 24,
      color: AppColor.dark,
    ),
    bodySmall: TextStyle(
      fontFamily: FontFamily.poppins,
      fontSize: 16,
      color: AppColor.dark,
    ),
    bodyMedium: TextStyle(
      fontFamily: FontFamily.poppins,
      fontSize: 18,
      color: AppColor.dark,
    ),
    bodyLarge: TextStyle(
      fontFamily: FontFamily.poppins,
      fontSize: 24,
      color: AppColor.dark,
    ),
  );

  static final darkTextTheme = TextTheme(
    titleSmall: TextStyle(
      fontFamily: FontFamily.poppins,
      fontSize: 16,
      color: AppColor.white,
    ),
    titleMedium: TextStyle(
      fontFamily: FontFamily.poppins,
      fontSize: 20,
      color: AppColor.white,
    ),
    titleLarge: TextStyle(
      fontFamily: FontFamily.poppins,
      fontSize: 24,
      color: AppColor.white,
    ),
    bodySmall: TextStyle(
      fontFamily: FontFamily.poppins,
      fontSize: 16,
      color: AppColor.white,
    ),
    bodyMedium: TextStyle(
      fontFamily: FontFamily.poppins,
      fontSize: 18,
      color: AppColor.white,
    ),
    bodyLarge: TextStyle(
      fontFamily: FontFamily.poppins,
      fontSize: 24,
      color: AppColor.white,
    ),
  );
}
