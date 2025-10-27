import 'package:bank_app/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Map<String, WidgetBuilder> route = {
    "splash": (BuildContext context) => Splash(),
  };
}
