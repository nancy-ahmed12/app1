import 'package:flutter/material.dart';
import '../signin_screen/singnin_screen.dart';
import '../welcome_screen/welcome_screen.dart';
class OnBoardingScreen extends StatelessWidget { const OnBoardingScreen({super.key});
@override Widget build(BuildContext context) { return Scaffold( backgroundColor: Colors.white, body: SafeArea( child: Padding( padding: const EdgeInsets.symmetric(horizontal: 25), child: Column( children: [ const Spacer(),
  Image.asset(
    'assets/images/Group 7091 (1).png',
    height: 275,
  ),

  const SizedBox(height: 35),

  const Text(
    'Welcome to our app',
    style: TextStyle(
      fontSize: 22,
      color: Color(0xff8B6B52),
      fontWeight: FontWeight.w500,
    ),
  ),

  const SizedBox(height: 15),

  const Text(
    'Shop online and get groceries\n'
        'delivered from stores to your home\n'
        'in as fast as 1 hour.',
    textAlign: TextAlign.center,
    style: TextStyle(
      fontSize: 16,
      color: Color(0xff8B6B52),
    ),
  ),

  const Spacer(),

  SizedBox(
    width: double.infinity,
    height: 55,
    child: ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const WelcomeScreen(),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xffFF5E00),
        foregroundColor: Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      child: const Text('Sign up'),
    ),
  ),

  const SizedBox(height: 15),

  SizedBox(
    width: double.infinity,
    height: 55,
    child: OutlinedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const SigninScreen(),
          ),
        );
      },
      style: OutlinedButton.styleFrom(
        foregroundColor: const Color(0xffFF5E00),
        side: const BorderSide(
          color: Color(0xffFF5E00),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      child: const Text('Sign in'),
    ),
  ),

  const SizedBox(height: 25),
],
),
),
),
);
} }