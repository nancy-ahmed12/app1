import 'package:flutter/material.dart';
import 'package:untitled1/splash_screen/splash_screen.dart';
import 'on_boarding_screen/on_boarding.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),

    );
  }
}

