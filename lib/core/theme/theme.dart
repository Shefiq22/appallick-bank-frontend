import 'package:bank_app/core/constants/app_color.dart';
import 'package:bank_app/core/theme/text_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData dark = ThemeData.dark().copyWith(
    textTheme: AppTextTheme.darkTextTheme,
    scaffoldBackgroundColor: AppColor.primary,
  );
  static ThemeData light = ThemeData.light().copyWith(
    textTheme: AppTextTheme.lightTextTheme,
    scaffoldBackgroundColor: AppColor.white,
  );
}
