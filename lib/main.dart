import 'package:flutter/material.dart';
import 'package:new_app/chat.dart';
import 'package:new_app/login.dart';
import 'package:new_app/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(primaryColor: Colors.yellow),
      debugShowCheckedModeBanner: false,
      home:  const SplashScreen(),
      routes: {
        "/login": (context) => LoginPage(),
         "/chat": (context) => Chat(),
      },
    );
  }
}
