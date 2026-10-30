import 'package:flutter/material.dart';

class CartDetailsScreen extends StatefulWidget {
  const CartDetailsScreen({
    super.key,
    required this.image,
    required this.name,
    required this.price,
  });

  final String image;
  final String name;
  final String price;

  @override
  State<CartDetailsScreen> createState() => _CartDetailsScreenState();
}

class _CartDetailsScreenState extends State<CartDetailsScreen> {
  int quantity = 1;
  bool favorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.deepOrange,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          '${widget.name} Details',
          style: const TextStyle(
            color: Colors.deepOrange,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),

            Center(
              child: Image.asset(
                widget.image,
                height: 300,
                fit: BoxFit.contain,
              ),
            ),

            const SizedBox(height: 40),

            Text(
              widget.name,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.brown,
              ),
            ),

            const SizedBox(height: 10),

            Text(
              widget.price,
              style: const TextStyle(
                fontSize: 28,
                color: Colors.brown,
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              'Fresh and delicious product delivered to your home '
                  'in the most hygienic way ever.',
              style: TextStyle(
                fontSize: 18,
                color: Colors.brown,
                height: 1.5,
              ),
            ),

            const SizedBox(height: 35),

            Row(
              children: [
                Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    icon: const Icon(
                      Icons.remove,
                      color: Colors.brown,
                    ),
                    onPressed: () {
                      if (quantity > 1) {
                        setState(() {
                          quantity--;
                        });
                      }
                    },
                  ),
                ),

                SizedBox(
                  width: 70,
                  child: Center(
                    child: Text(
                      '$quantity',
                      style: const TextStyle(
                        fontSize: 22,
                        color: Colors.brown,
                      ),
                    ),
                  ),
                ),

                Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    icon: const Icon(
                      Icons.add,
                      color: Colors.brown,
                    ),
                    onPressed: () {
                      setState(() {
                        quantity++;
                      });
                    },
                  ),
                ),

                const Spacer(),

                IconButton(
                  icon: Icon(
                    favorite
                        ? Icons.favorite
                        : Icons.favorite_border,
                    color: Colors.deepOrange,
                    size: 40,
                  ),
                  onPressed: () {
                    setState(() {
                      favorite = !favorite;
                    });
                  },
                ),
              ],
            ),

            const Spacer(),

            SizedBox(
              width: double.infinity,
              height: 65,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35),
                  ),
                ),
                child: const Text(
                  'Add To cart',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}