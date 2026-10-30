import 'package:flutter/material.dart';
import '../core/helpers/custom_app_button.dart';
import '../core/helpers/custom_app_field.dart';
class  WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});
@override Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.white, elevation: 0, leading: IconButton( icon: Icon( Icons.arrow_back_ios_new_rounded, color: Color(0xffFF5E00), ), onPressed: () { Navigator.pop(context); }, ), centerTitle: true, title: Text( 'Sign up', style: TextStyle( color: Color(0xffFF5E00), fontSize: 30, fontWeight: FontWeight.w400, ), ), ),
  body: SingleChildScrollView(
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Image.asset(
            'assets/images/Group 7086.png',
            height: 275,
          ),

          SizedBox(height: 25),

          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Please enter your information to\ncreate an account.',
              style: TextStyle(
                fontSize: 22,
                color: Color(0xff8B6B52),
              ),
            ),
          ),

          SizedBox(height: 30),

          CustomAppField(
            hintText: 'Email',
          ),

          SizedBox(height: 20),

          CustomAppField(
            hintText: 'Password',
          ),

          SizedBox(height: 20),

          CustomAppField(
            hintText: 'Confirm Password',
          ),

          SizedBox(height: 30),

          CustomAppButton(
            text: 'Sign up',
            onPressed: () {},
          ),
        ],
      ),
    ),
  ),
);
} }