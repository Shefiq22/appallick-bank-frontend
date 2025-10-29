import 'package:bank_app/core/constants/constant.dart';
import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isLoading = false;

  void register() async {
    try {
      isLoading = true;
      notifyListeners();
      await AppClient.client.post(
        "/auth/register/",
        body: {
          "email": emailController.text,
          "name": nameController.text,
          "password": passwordController.text,
          "phone": phoneController.text,
        },

        onDone: (res, error) {
          isLoading = false;
          notifyListeners();
          if (res.isSuccess) {
            print(res.data);
          }
        },
      );
    } on FlutterError catch (e) {
      print(e.message);
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }

  void login() async {
    isLoading = true;
    notifyListeners();
    await AppClient.client.post(
      "/auth/login/",
      body: {
        "email": emailController.text,
        "password": passwordController.text,
      },

      onDone: (res, error) {
        isLoading = false;
        notifyListeners();
        if (res.isSuccess) {
          print(res.data);
        }
      },
    );
  }
}
