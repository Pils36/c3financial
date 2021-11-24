import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:c3financial/constants/colors.dart';
import 'package:c3financial/views/starting/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "DM Sans",
      ),
      home: AnimatedSplashScreen(
        splash: Image.asset('assets/logo/ccc_logo.png'),
        nextScreen: OnboardingScreen(),
        splashTransition: SplashTransition.fadeTransition,
      ),
    );
  }
}
