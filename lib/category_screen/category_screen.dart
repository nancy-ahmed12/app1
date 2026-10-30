import 'package:flutter/material.dart';
import 'package:untitled1/widget/deals_item.dart';
import '../widget/category_item.dart';
class CategoryScreen extends StatefulWidget {
  CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
List<String> categName = [ 'Fruits', 'Vegetables', 'Meat', 'Fish', 'Sea food', 'Juice', 'Egg & Milk', 'Ice cream', 'Cake', ];

List<String> categImage = ['assets/images/noun_Fruit_2287486 1.png',
  'assets/images/noun_pumpkin_4002936 1.png',
  'assets/images/noun_Meat_3765650 1.png',
  'assets/images/Group.png',
  'assets/images/noun_Shrimp_703278 1.png',
  'assets/images/lemon.png',
  'assets/images/Group 7084.png',
  'assets/images/ice cream.png',
  'assets/images/torta.png',
];

List<int> bgColor = [ 0xffEDD0FF, 0xffFFD9BA, 0xffFACCCC, 0xffFACCCC, 0xffFFE299, 0xffD3E5C4, 0xffDAF2FC, 0xffFFDEF6, 0xffFECA97, ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.grey.shade100,
        centerTitle: true,
        title: Text(
          'Categories',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w700,
            color: Color(0xffFF5E00),

          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                filled: true,
                fillColor: Color(0xffF3F3F3),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.symmetric(horizontal: 20),
              itemCount: categName.length,
              gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1,
              ),
              itemBuilder: (context, index) {
                return CategoryItem(
                  categimage: categImage[index],
                  categName: categName[index],
                  bgColor: bgColor[index],
                );

              },

            ),

          ),

        ],

      ),

    );

  }
}