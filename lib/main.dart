import 'package:bank_app/core/router.dart';
import 'package:bank_app/core/theme/theme.dart';
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
      initialRoute: "home",
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
   
 
    );
  }
}