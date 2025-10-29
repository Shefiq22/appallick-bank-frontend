import 'package:bank_app/core/router.dart';
import 'package:bank_app/core/theme/theme.dart';
import 'package:bank_app/provider/provider.dart';
import 'package:bank_app/provider/theme_provider.dart';
import 'package:bank_app/screens/onboarding.dart';
import 'package:bank_app/screens/screens.dart';
import 'package:flutter/material.dart';

void main(){
runApp(BankAppRoot());
}
class BankAppRoot extends StatelessWidget {
  const BankAppRoot({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: AppRouter().route,
      initialRoute: "splash",
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: Provider.of<ThemeProvider>(context).themeMode,
      home: Splash(),
      initialRoute: "home",
    );
  }
}