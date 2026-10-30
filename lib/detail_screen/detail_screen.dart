import 'package:flutter/material.dart';
class DetailScreen extends StatelessWidget { final String name; final String description; final double price; final String image;
const DetailScreen({ super.key, required this.name, required this.description, required this.price, required this.image, });
@override Widget build(BuildContext context) { return Scaffold( appBar: AppBar( title: const Text('Details'), ),
  body: Padding(
    padding: const EdgeInsets.all(20),

    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Image.network(
          image,
          width: double.infinity,
          height: 300,
          fit: BoxFit.cover,
        ),

        const SizedBox(height: 20),

        Text(
          name,
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 10),

        Text(
          '$price EGP',
          style: const TextStyle(
            fontSize: 22,
          ),
        ),

        const SizedBox(height: 15),

        Text(
          description,
          style: const TextStyle(
            fontSize: 17,
          ),
        ),
      ],
    ),
  ),
);
} }