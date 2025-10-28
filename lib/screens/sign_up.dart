import 'package:bank_app/core/constants/constant.dart';
import 'package:bank_app/core/extensions/num_extension.dart';
import 'package:bank_app/core/extensions/theme_extensions.dart';
import 'package:bank_app/screens/widgets/widget.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

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
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                width: 42,
                height: 42,
                decoration: BoxDecoration(
                  color: Color(0xffF4F4F4),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Icon(Icons.arrow_back_ios_rounded, color: AppColor.dark),
              ),
            ),
            20.getHeightWhiteSpacing,
            SizedBox(
              width: context.screenSize.width,
              child: Text(
                "Sign Up",
                style: context.textTheme.titleLarge?.copyWith(
                  fontSize: 30,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            20.getHeightWhiteSpacing,
            Form(
              child: Column(
                spacing: 10,
                children: [
                  AppTextfield(
                    label: "Full Name",
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: ImageWidget(imagePath: AppImages.user),
                      ),
                      hintText: "John Doe",
                    ),
                  ),
                  5.getHeightWhiteSpacing,
                  AppTextfield(
                    label: "Phone Number",
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: ImageWidget(imagePath: AppImages.phone),
                      ),
                      hintText: "+2347032522952",
                    ),
                  ),
                  5.getHeightWhiteSpacing,
                  AppTextfield(
                    label: "Email Address",
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: ImageWidget(imagePath: AppImages.email),
                      ),
                      hintText: "example@example.com",
                    ),
                  ),
                  5.getHeightWhiteSpacing,
                  AppTextfield(
                    label: "Password",
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: ImageWidget(imagePath: AppImages.lock),
                      ),
                      hintText: "••••••••",
                      suffixIcon: Icon(
                        Icons.visibility_outlined,
                        color: AppColor.darkGrey,
                      ),
                    ),
                  ),
                  30.getHeightWhiteSpacing,
                  AppButtons(onPressed: () {}, text: "Sign Up"),
                  20.getHeightWhiteSpacing,
                  SizedBox(
                    width: context.screenSize.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account? ",
                          style: context.textTheme.bodySmall,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, "login");
                          },
                          child: Text(
                            "Sign Up",
                            style: context.textTheme.bodySmall?.copyWith(
                              color: AppColor.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
