import 'dart:async'; import 'package:flutter/material.dart'; import 'package:untitled1/on_boarding_screen/on_boarding.dart';
class SplashScreen extends StatefulWidget { const SplashScreen({super.key});
@override State<SplashScreen> createState() => _SplashScreenState(); }
class _SplashScreenState extends State<SplashScreen> { @override void initState() { super.initState();
Timer(const Duration(seconds: 3), () {
  if (!mounted) return;

  Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (context) => const OnBoardingScreen(),
    ),
  );
});
}
@override Widget build(BuildContext context) { return Scaffold( body: Center( child: Image.asset( 'assets/images/Splash.png', width: 250, ), ), ); } }