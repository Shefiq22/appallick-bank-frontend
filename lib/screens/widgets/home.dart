import 'package:bank_app/core/constants/constant.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(padding: 
      const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row
      (
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: AppColor.primary,
          )
        ],
        

      ),
      ),
    );
  }
}