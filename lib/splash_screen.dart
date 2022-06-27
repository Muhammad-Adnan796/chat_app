import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:new_app/code.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splashIconSize: 60,
      backgroundColor: Colors.white,
      nextScreen: const Code(),
      splash: "images/splashlogo.png",
      splashTransition: SplashTransition.fadeTransition,
    );
  }
}
