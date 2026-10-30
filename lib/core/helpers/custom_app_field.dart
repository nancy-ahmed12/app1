import 'package:flutter/material.dart';

class CustomAppField extends StatelessWidget {
  final String hintText;

  const CustomAppField({
    super.key,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        fillColor: Color(0xffF3F3F3),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xffF3F3F3),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xffFF5E00),
          ),
        ),
      ),
    );
  }
}