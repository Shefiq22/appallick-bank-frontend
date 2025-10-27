import 'package:bank_app/core/extensions/theme_extensions.dart';
import 'package:flutter/material.dart';

class AppColor {
  static const Color primary = Color(0xff161622);
  static const Color grey = Color(0xff7e848D);
  static const Color dark = Color(0xff1E1E2D);
  static const Color blue = Color(0xff0066FF);
  static const Color white = Color(0xffFFFFFF);
  static const Color darkGrey = Color(0xffA2A2A7);

  static Color getSplashColor(BuildContext context) {
    return context.isDark ? primary : white;
  }

  static Color textColor(BuildContext context) {
    return context.isDark ? white : dark;
  }

  static Color logoColor(BuildContext context) {
    return context.isDark ? white : primary;
  }
}
