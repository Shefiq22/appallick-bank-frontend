import 'package:bank_app/core/constants/constant.dart';
import 'package:bank_app/core/extensions/num_extension.dart';
import 'package:bank_app/core/extensions/theme_extensions.dart';
import 'package:bank_app/screens/widgets/app_textfield.dart';
import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 10,
          children: [
            50.getHeightWhiteSpacing,
            Container(
              width: 42,
              height: 42,
              decoration: BoxDecoration(
                color: Color(0xffF4F4F4),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Icon(Icons.arrow_back_ios_rounded, color: AppColor.dark),
            ),
            20.getHeightWhiteSpacing,
            SizedBox(
              width: context.screenSize.width,
              child: Text(
                "Sign In",
                style: context.textTheme.titleLarge?.copyWith(
                  fontSize: 30,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            20.getHeightWhiteSpacing,
            AppTextfield(label: "Email Address"),
          ],
        ),
      ),
    );
  }
}
