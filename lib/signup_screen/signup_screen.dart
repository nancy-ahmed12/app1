import 'package:flutter/material.dart';


import '../core/helpers/custom_app_button.dart';
import '../core/helpers/custom_app_field.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Sign up',
          style: TextStyle(
              fontSize: 24,fontWeight: FontWeight.w400,
              color: Color(0xffFF5E00)
          ),
        ),
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios_new_rounded,
          color: Color(0xffFF5E00),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset('assets/images/Group 7086.png',height: 275,),
              SizedBox(height: 60,),
              Text('Please enter your information to\n create an account.',
                style: TextStyle(
                    fontSize: 18,fontWeight: FontWeight.w400,
                    color: Color(0xff6D3805)
                ),
              ),
              SizedBox(height: 12,),
              CustomAppField(

                hintText: 'Email',

              ),
              SizedBox(height: 12,),
              CustomAppField(
                hintText: 'Password',
              ),
              SizedBox(height: 12,),
              CustomAppField(
                hintText: 'Confirm Password',

              ),
              SizedBox(height: 18,),

              CustomAppButton(
                onPressed: () {},
                text: 'sign up',
              ),

              SizedBox(height: 18,),

            ],
          ),
        ),
      ),
    );
  }
}
