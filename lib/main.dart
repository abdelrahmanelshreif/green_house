import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_house/Cubit/login_cubit.dart';
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
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,

        home: OnboardingScreen(num: 1),
        // home: LoginScreen(),
        //home: Sign_UP(),
      ),
    );
  }
}
