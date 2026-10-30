import 'package:flutter/material.dart';
class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.categimage, required this.categName, required this.bgColor});
  final String categimage;
  final String categName;
  final int bgColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundColor: Color(bgColor),
          child: Image.asset(categimage),

        ),
        SizedBox(height: 12,),
        Text(categName,
        style: TextStyle(
          fontSize: 15,fontWeight: FontWeight.w400,
          color: Color(0xff6D3805)
        ),
        ),
      ],
    );
  }
}