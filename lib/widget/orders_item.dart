import 'package:flutter/material.dart';
class OrdersItem extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final String price;
  final Color bgColor;
const OrdersItem({ super.key, required this.text1, required this.text2, required this.text3, required this.price, required this.bgColor, });
@override Widget
build(BuildContext context) {
  return Container(
    height: 80,
    child: Row(
      children: [
        Container(
          height: 55,
          width: 55,
          decoration: BoxDecoration(
            color: Color(0xffFF8A3D),
            shape: BoxShape.circle,
          ),
          child: Icon( Icons.shopping_basket,
            color: Colors.white, size: 30,
          ), ),
  SizedBox(width: 15),

  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        text1,
        style: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.bold,
          color: Color(0xff713E15),
        ),
      ),

      Text(
        text2,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: bgColor,
        ),
      ),

      Text(
        text3,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Color(0xff804F1E),
        ),
      ),
    ],
  ),

  Spacer(),

  Text(
    price,
    style: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: Color(0xffF5A26A),
    ),
  ),
],
),
);
} }