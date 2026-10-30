import 'package:flutter/material.dart'; import
'detail_screen.dart';
import 'detail_screen/detail_screen.dart';
class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});
@override
Widget build(BuildContext context) {
  String itemName = 'T-Shirt';

  String itemDescription = 'Comfortable cotton T-Shirt';

  double itemPrice = 250;

  String itemImage =

      'https://images.unsplash.com/photo-1521572163474-6864f9cf17ab';
  return Scaffold(
    appBar: AppBar(
      title: const Text('Home'),
    ),
    body: Center(
      child: GestureDetector(
        onTap: () {
          // Passing data to DetailsScreen
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailScreen(
                name: itemName,
                description: itemDescription,
                price: itemPrice,
                image: itemImage,
              ),
            ),
          );
        },
        child: Card(
          margin: const EdgeInsets.all(20),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.network(
                  itemImage,
                  height: 200,
                  width: 200,
                  fit: BoxFit.cover,
                ),

                const SizedBox(height: 10),

                Text(
                  itemName,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 5),

                Text(
                  '$itemPrice EGP',
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
} }

