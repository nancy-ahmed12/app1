import 'package:flutter/material.dart';
import 'package:untitled1/widget/deals_item.dart';
import 'package:untitled1/widget/category_item.dart';
import 'package:untitled1/details_screen/details_screen.dart';

import '../category_screen/category_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List<String> categName = [
    'Fruits',
    'Vegetables',
    'Meat',
    'Fish',
    'juice'
  ];

  List<String> categImage = [
    'assets/images/noun_Fruit_2287486 1.png',
    'assets/images/noun_pumpkin_4002936 1.png',
    'assets/images/noun_Meat_3765650 1.png',
    'assets/images/Group.png',
    'assets/images/Vector.png'
  ];

  List<int> bgColor = [
    0xffEDD0FF,
    0xffFFD9BA,
    0xffFACCCC,
    0xffFACCCC,
    0xffD3E5C4
  ];

  // ================= Fruits =================

  List<String> fruitName = [
    'Apple',
    'Orginal Banana',
    'Avocado',
    'Salmon'
  ];

  List<String> fruitPrice = [
    r'$ 4,99',
    r'$ 5,99',
    r'$ 4,90',
    r'$4.45',
    r'$ 5,99',
  ];

  List<String> fruitImage = [
    'assets/images/purepng 1.png',
    'assets/images/banana.png',
    'assets/images/Avocado-PNG-Clipart 1.png',
    'assets/images/salmon.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      body: Column(
        children: [
          Image.asset(
            'assets/images/complimentary-dish 1.png',
          ),

          const SizedBox(
            height: 30,
          ),

          // ================= Categories =================

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Categories',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff6D3805),
                ),
              ),

              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CategoryScreen(),
                    ),
                  );
                },
                child: const Text(
                  'See All',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffFF5E00),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(
            height: 30,
          ),

          SizedBox(
            height: 150,

            child: ListView.builder(
              itemCount: bgColor.length,
              scrollDirection: Axis.horizontal,

              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),

                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                            image: categImage[index],
                            nameFruit: categName[index],
                          ),
                        ),
                      );
                    },

                    child: CategoryItem(
                      categimage: categImage[index],
                      categName: categName[index],
                      bgColor: bgColor[index],
                    ),
                  ),
                );
              },
            ),
          ),

          // ================= Deals =================

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Deals',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff6D3805),
                ),
              ),

              const Text(
                'see All',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffFF5E00),
                ),
              ),
            ],
          ),

          const SizedBox(
            height: 30,
          ),

          SizedBox(
            height: 200,

            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: fruitPrice.length,

              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(
                          image: fruitImage[index],
                          nameFruit: fruitName[index],
                        ),
                      ),
                    );
                  },

                  child: DealsItem(
                    image: fruitImage[index],
                    title: fruitName[index],
                    price: fruitPrice[index],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}