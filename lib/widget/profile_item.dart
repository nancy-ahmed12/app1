import 'package:flutter/material.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem(this.startIcon, this.text, this.endIcon, {super.key});
  final IconData startIcon;
  final String text;
  final Widget? endIcon;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(startIcon,
        color: Color(0xff804F1E),
        size: 20,
      ),
      title: Text(text,
        style: TextStyle(
          fontSize: 18,fontWeight: FontWeight.bold,
          color: Color(0xff804F1E),
        ),
      ) ,
      trailing:endIcon??
      Icon(Icons.arrow_forward_ios_rounded,
        size: 20,
        color: Color(0xff804F1E),
      ),

    );
  }
}
