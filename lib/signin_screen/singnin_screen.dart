import 'package:flutter/material.dart';


import '../home_nav/home_nav.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                const SizedBox(height: 20),

                Row(
                  children: [
                    const Icon(
                      Icons.arrow_back_ios,
                      color: Color(0xffF36B2B),
                    ),
                    const Spacer(),
                    const Text(
                      "Sign In",
                      style: TextStyle(
                        fontSize: 35,
                        color: Color(0xffF36B2B),
                      ),
                    ),
                    const Spacer(),
                  ],
                ),

                const SizedBox(height: 30),

                Image.asset(
                  'assets/images/vactor.jpg',
                  height: 350,
                ),

                const SizedBox(height: 20),

                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Enter your Email and\npassword to access your account",
                    style: TextStyle(
                      fontSize: 21,
                      color: Color(0xff70451F),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                TextField(
                  decoration: InputDecoration(
                    hintText: "Email",
                    filled: true,
                    fillColor: const Color(0xffF4F4F4),
                    border: InputBorder.none,
                  ),
                ),

                const SizedBox(height: 15),

                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                    filled: true,
                    fillColor: const Color(0xffF4F4F4),
                    border: InputBorder.none,
                    suffixIcon: const Icon(
                      Icons.visibility_outlined,
                      color: Color(0xffF36B2B),
                    ),
                  ),
                ),

                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(
                      color: Color(0xffF36B2B),
                      fontSize: 17,
                    ),
                  ),
                ),

                const SizedBox(height: 25),

                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeNav(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffF36B2B),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      "Sign in",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don’t have an account?",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff70451F),
                      ),
                    ),

                    const SizedBox(width: 5),

                    const Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xffF36B2B),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}