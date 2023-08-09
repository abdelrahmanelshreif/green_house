import 'package:flutter/material.dart';
import 'package:green_house/View/Login.dart';
import 'package:green_house/View/OnboardingScreen.dart';
import 'package:green_house/View/SignUp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

     home: OnboardingScreen(num: 1),
     // home: LoginScreen(),
      //home: Sign_UP(),
    );
        }
}
