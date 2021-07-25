import 'package:flutter/material.dart';
import 'package:life_again/modules/patient/patient_home.dart';
import 'package:life_again/modules/patient_or_escort/patient_or_escort.dart';
import 'package:life_again/modules/splash/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}