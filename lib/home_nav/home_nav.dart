import 'package:flutter/material.dart';
import 'package:untitled1/cart_screen/cart_screen.dart';
import 'package:untitled1/category_screen/category_screen.dart';
import 'package:untitled1/home/home_screen.dart';
import 'package:untitled1/orders_screen/orders_screen.dart';
import 'package:untitled1/profile_screen/profile_screen.dart';
class HomeNav extends StatefulWidget {
  const HomeNav({super.key});
@override
State<HomeNav> createState() => _HomeNavState(); }
class _HomeNavState extends State<HomeNav> { int currentIndex = 0;
List<Widget> screens = [ HomeScreen(), CategoryScreen(), CartScreen(), OrdersScreen(), ProfileScreen(), ];
@override Widget build(BuildContext context) { return Scaffold( body: screens[currentIndex],
  bottomNavigationBar: BottomNavigationBar(
    currentIndex: currentIndex,

    onTap: (value) {
      setState(() {
        currentIndex = value;
      });
    },

    items: [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Shop',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.search),
        label: 'Explore',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.shopping_cart),
        label: 'Cart',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.shopping_bag),
        label: 'Orders',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'Account',
      ),
    ],

    selectedItemColor: Color(0xffFF5E00),
    unselectedItemColor: Color(0xff6D3805),
    type: BottomNavigationBarType.fixed,
  ),
);
} }



