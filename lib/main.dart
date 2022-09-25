// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sniper_lab_application/constants/color_theme.dart';
import 'package:sniper_lab_application/routes/routes.dart';
import 'package:sniper_lab_application/view/screens/login_screen.dart';
import 'package:sniper_lab_application/view/screens/welcome_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sniper Lab',
      theme: ThemeData(
        fontFamily: "Cairo",
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: AppRoutes.welcome,
      getPages: AppRoutes.routes,
    );
  }
}
