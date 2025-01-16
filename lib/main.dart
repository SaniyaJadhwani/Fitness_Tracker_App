import 'package:fitness_tracker/screens/ActivityLevelScreen/ActivityLevelScreen.dart';
import 'package:fitness_tracker/screens/AgeScreen/AgeScreen.dart';
import 'package:fitness_tracker/screens/GenderScreen/GenderScreen.dart';
import 'package:fitness_tracker/screens/GoalScreen/GoalScreen.dart';
import 'package:fitness_tracker/screens/HeightScreen/HeightScreen.dart';
import 'package:fitness_tracker/screens/LoginSignup/ForgotPassword.dart';
import 'package:fitness_tracker/screens/OnBoardingScreen/OnBoardingScreen.dart';
import 'package:fitness_tracker/screens/WeightScreen/WeightScreen.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.black,
        routes: {
          '/OnBoarding': (context) => OnBoardingScreen(),
          '/Gender': (context) => Genderscreen(),
          '/Age': (context) => AgeScreen(),
          '/Height': (context) => Heightscreen(),
          '/Weight': (context) => Weightscreen(),
          '/Activity': (context) => Activitylevelscreen(),
          '/Goal': (context) => Goalscreen(),
        },
      debugShowCheckedModeBanner: false,
      home: ForgotPassword(),
    );
  }
}
