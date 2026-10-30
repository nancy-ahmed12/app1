import 'package:flutter/material.dart'; import '../widget/cart_item.dart'; import '../details_screen/details_screen.dart';
class CartScreen extends StatefulWidget { const CartScreen({super.key});
@override State<CartScreen> createState() => _CartScreenState(); }
class _CartScreenState extends State<CartScreen> { List<String> images = [ 'assets/images/purepng 2.png', 'assets/images/banana.png', 'assets/images/Avocado-PNG-Clipart 1.png', 'assets/images/salmon.png', ];
List<String> names = [ 'Red Apple', 'Orginal Banana', 'Avocado Bowl', 'Salmon', ];
List<String> prices = [ '\$4,99', '\$5,99', '\$24', '\$50', ];
List<String> units = [ 'kg', 'kg', 'st', 'kg', ];
List<int> quantities = [ 2, 2, 2, 2, ];
void deleteItem(int index) { setState(() { images.removeAt(index); names.removeAt(index); prices.removeAt(index); units.removeAt(index); quantities.removeAt(index); }); }
@override Widget build(BuildContext context) { return Scaffold( appBar: AppBar( backgroundColor: Colors.white, centerTitle: true, title: const Text( 'Cart', style: TextStyle( color: Color(0xffFF5E00), fontSize: 26, fontWeight: FontWeight.w700, ), ), ),
  body: Padding(
    padding: const EdgeInsets.all(8.0),

    child: Column(
      children: [
        const SizedBox(height: 25),

        Expanded(
          child: ListView.builder(
            itemCount: images.length,

            itemBuilder: (context, index) {
              return Dismissible(
                key: Key(names[index]),
                direction: DismissDirection.endToStart,

                background: Container(
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.only(right: 20),
                  color: const Color(0xffA42B32),

                  child: const Icon(
                    Icons.delete_outline,
                    color: Colors.white,
                    size: 30,
                  ),
                ),

                onDismissed: (direction) {
                  deleteItem(index);
                },

                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(
                          image: images[index],
                          nameFruit: names[index],
                        ),
                      ),
                    );
                  },

                  child: CartItem(
                    image: images[index],
                    name: names[index],
                    price: prices[index],
                    unit: units[index],
                    quantity: quantities[index],

                    onAdd: () {
                      setState(() {
                        quantities[index]++;
                      });
                    },

                    onRemove: () {
                      if (quantities[index] > 1) {
                        setState(() {
                          quantities[index]--;
                        });
                      }
                    },
                  ),
                ),
              );
            },
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(25),

          child: SizedBox(
            width: double.infinity,
            height: 65,

            child: ElevatedButton(
              onPressed: () {},

              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffF36B21),
                foregroundColor: Colors.white,

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35),
                ),
              ),

              child: const Text(
                'CheckOut',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  ),
);
} }
