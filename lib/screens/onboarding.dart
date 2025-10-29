import 'package:bank_app/core/constants/app_images.dart';
import 'package:bank_app/core/constants/constant.dart';
import 'package:bank_app/core/constants/font_family.dart';
import 'package:bank_app/core/extensions/num_extension.dart';
import 'package:bank_app/core/extensions/theme_extensions.dart';
import 'package:bank_app/screens/widgets/image_widget.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  void _nextPage() {
    if (_currentPage < 2) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    } else {
      Navigator.pushNamed(context, "signup");
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentPage = index);
          },
          children: [
            // PAGE 1 ........................................
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  60.getHeightWhiteSpacing,
                  40.getHeightWhiteSpacing,
                  ImageWidget(
                    imagePath: AppImages.board2,
                    width: 500,
                    height: 300,
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 5,
                    children: [
                      Container(
                        height: 7,
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue,
                        ),
                      ),
                      Container(
                        height: 10,
                        width: 10,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey,
                        ),
                      ),
                      Container(
                        height: 10,
                        width: 10,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: context.screenSize.width,
                    child: Text(
                      "Fastest Payment in the world",
                      textAlign: TextAlign.center,
                      style: context.textTheme.titleLarge?.copyWith(
                        fontFamily: FontFamily.poppins,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        letterSpacing: 2,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                  SizedBox(
                    width: context.screenSize.width,
                    child: Text(
                      "Integrate multiple payment methods to help you up the process quickly.",
                      textAlign: TextAlign.center,
                      style: context.textTheme.bodyMedium?.copyWith(
                        fontFamily: FontFamily.poppins,
                        fontSize: 20,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(height: 80),
                  GestureDetector(
                    onTap: _nextPage,
                    child: Container(
                      height: 70,
                      width: 370,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue,
                      ),
                      child: Center(
                        child: Text(
                          "Next",
                          style: context.textTheme.titleLarge?.copyWith(
                            fontFamily: FontFamily.poppins,
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // PAGE 2........................................
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 60),
                  const SizedBox(height: 40),
                  ImageWidget(
                    imagePath: AppImages.board3,
                    width: 500,
                    height: 300,
                  ),
                  const SizedBox(height: 60),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 5,
                    children: [
                      Container(
                        height: 7,
                        width: 10,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey,
                        ),
                      ),
                      Container(
                        height: 7,
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue,
                        ),
                      ),
                      Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  SizedBox(
                    width: context.screenSize.width,
                    child: Text(
                      "The most Secure Platform for Customers",
                      textAlign: TextAlign.center,
                      style: context.textTheme.titleLarge?.copyWith(
                        fontFamily: FontFamily.poppins,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        letterSpacing: 2,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                  SizedBox(
                    width: context.screenSize.width,
                    child: Text(
                      "Built-in Fingerprint, face recognition and more, keeping you completely safe.",
                      textAlign: TextAlign.center,
                      style: context.textTheme.bodyMedium?.copyWith(
                        fontFamily: FontFamily.poppins,
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(height: 70),
                  GestureDetector(
                    onTap: _nextPage,
                    child: Container(
                      height: 70,
                      width: 370,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue,
                      ),
                      child: Center(
                        child: Text(
                          "Next",
                          style: context.textTheme.titleLarge?.copyWith(
                            fontFamily: FontFamily.poppins,
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //  PAGE 3...............................
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 60),
                  const SizedBox(height: 40),
                  ImageWidget(
                    imagePath: AppImages.board4,
                    width: 500,
                    height: 300,
                  ),
                  SizedBox(height: 60),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 5,
                    children: [
                      Container(
                        height: 7,
                        width: 10,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey,
                        ),
                      ),
                      Container(
                        height: 10,
                        width: 10,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey,
                        ),
                      ),
                      Container(
                        height: 7,
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  SizedBox(
                    width: context.screenSize.width,
                    child: Text(
                      "Paying for Everything is Easy and Convenient.",
                      textAlign: TextAlign.center,
                      style: context.textTheme.titleLarge?.copyWith(
                        fontFamily: FontFamily.poppins,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        letterSpacing: 2,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 60),
                  SizedBox(
                    width: context.screenSize.width,
                    child: Text(
                      "Built-in Fingerprint, face recognition and more, keeping you completely safe.",
                      textAlign: TextAlign.center,
                      style: context.textTheme.titleMedium?.copyWith(
                        fontFamily: FontFamily.poppins,
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                  AppButtons(onPressed: () {
                    _nextPage();
                  }, text: "Next"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
