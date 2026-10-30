import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({
    super.key,
    required this.image,
    required this.nameFruit,
  });

  final String image;
  final String nameFruit;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int quantity = 1;

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
          '${widget.nameFruit} Details',
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

            // صورة الفاكهة
            Center(
              child: Image.asset(
                widget.image,
                height: 300,
                fit: BoxFit.contain,
              ),
            ),

            const SizedBox(height: 40),

            // اسم الفاكهة
            Text(
              widget.nameFruit,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.brown,
              ),
            ),

            const SizedBox(height: 10),

            // السعر
            const Text(
              r'$ 5,99',
              style: TextStyle(
                fontSize: 28,
                color: Colors.brown,
              ),
            ),

            const SizedBox(height: 25),

            // الوصف
            const Text(
              'Fresh and delicious fruit delivered to your home '
                  'in the most hygienic way ever.',
              style: TextStyle(
                fontSize: 18,
                color: Colors.brown,
                height: 1.5,
              ),
            ),

            const SizedBox(height: 35),

            // Quantity + Heart
            Row(
              children: [
                // Minus
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

                // Quantity
                SizedBox(
                  width: 70,
                  child: Center(
                    child: Text(
                      '$quantity',
                      style: const TextStyle(
                        fontSize: 22,
                        color: Colors.brown,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),

                // Plus
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

                // Heart
                IconButton(
                  icon: const Icon(
                    Icons.favorite_border,
                    color: Colors.deepOrange,
                    size: 40,
                  ),
                  onPressed: () {},
                ),
              ],
            ),

            const Spacer(),

            // Add To Cart
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