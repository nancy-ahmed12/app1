import 'package:flutter/material.dart';
class CartItem extends StatelessWidget { final String image; final String name; final String price; final String unit; final int quantity;
final VoidCallback onAdd; final VoidCallback onRemove;
const CartItem({ super.key, required this.image, required this.name, required this.price, required this.unit, required this.quantity, required this.onAdd, required this.onRemove, });
@override Widget build(BuildContext context) { return Container( height: 165, color: Colors.white,
  child: Row(
    children: [

      SizedBox(
        width: 150,
        child: Image.asset(
          image,
          fit: BoxFit.contain,
        ),
      ),

      Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            Text(
              name,
              style: const TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.bold,
                color: Color(0xff713E15),
              ),
            ),

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Container(
                  height: 48,

                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xffE8E1DC),
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),

                  child: Row(
                    children: [

                      GestureDetector(
                        onTap: onRemove,
                        child: const Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Icon(
                            Icons.remove,
                            color: Color(0xff713E15),
                          ),
                        ),
                      ),

                      const SizedBox(width: 15),

                      Text(
                        '$quantity',
                        style: const TextStyle(
                          fontSize: 22,
                          color: Color(0xff713E15),
                        ),
                      ),

                      const SizedBox(width: 15),

                      GestureDetector(
                        onTap: onAdd,
                        child: const Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Icon(
                            Icons.add,
                            color: Color(0xff713E15),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text(
                    '$price $unit',
                    style: const TextStyle(
                      fontSize: 23,
                      color: Color(0xff713E15),
                    ),
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    ],
  ),
);
} }