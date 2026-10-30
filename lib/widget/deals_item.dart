import 'package:flutter/material.dart';

class DealsItem extends StatelessWidget {
  const DealsItem({super.key, required this.image, required this.title, required this.price});
 final String image;
 final String title;
 final String price;
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 150,
      width: 200,
      margin: EdgeInsets.only(right: 12),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: Center(child: Image.asset(image,))),
          Text(title,
            style: TextStyle(
              fontSize: 15,fontWeight: FontWeight.w700,
              color: Color(0xff6D3805)
            ),
          ),
          Text(price),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(r'$5.99',
                style: TextStyle(
                    fontSize: 20,fontWeight: FontWeight.w700,
                    color: Color(0xffFF5E00)
                ),
              ),
              CircleAvatar(
                backgroundColor: Color(0xff3AA14C),
                child: Icon(Icons.add,color: Colors.white,),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
