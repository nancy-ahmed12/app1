import 'package:flutter/material.dart';

class CustomAppButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomAppButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xffFF5E00),
        fixedSize: Size.fromHeight(50),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
