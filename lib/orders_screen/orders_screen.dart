import 'package:flutter/material.dart'; import 'package:untitled1/widget/orders_item.dart';
class OrdersScreen extends StatelessWidget { OrdersScreen({super.key});
final List<String> orderNumber = [ 'Order #345', 'Order #346', 'Order #347', ];
final List<String> orderStatus = [ 'Delivered', 'Cancelled', 'Delivered', ];
final List<String> orderDate = [ 'October 26, 2014', 'October 14, 2016', 'July 26, 2017', ];
final List<String> orderPrice = [ r'$700', r'$452', r'$281', ];
final List<Color> statusColor = [ Color(0xff5EC401), Color(0xffFF2110), Color(0xff5EC401), ];
@override Widget build(BuildContext context) { return DefaultTabController( length: 2, initialIndex: 1, child: Scaffold( backgroundColor: Colors.white,
  appBar: AppBar(
    backgroundColor: Colors.white,
    centerTitle: true,
    title: Text(
      'Orders',
      style: TextStyle(
        color: Color(0xffFF5E00),
        fontSize: 24,
        fontWeight: FontWeight.w700,
      ),
    ),

    bottom: TabBar(
      tabs: [
        Tab(text: 'Ongoing'),
        Tab(text: 'History'),
      ],
      dividerHeight: 0.5,
      indicator: UnderlineTabIndicator(
        insets: EdgeInsets.symmetric(horizontal: 90),
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
        borderSide: BorderSide(
          width: 3,
          color: Color(0xffFF5E00),
        ),
      ),
      labelColor: Color(0xffFF5E00),
      unselectedLabelColor: Color(0xff804F1E),
      labelStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
    ),
  ),

  body: TabBarView(
    children: [
      // Ongoing
      Center(
        child: Text(
          'No ongoing orders',
          style: TextStyle(
            fontSize: 18,
            color: Color(0xff804F1E),
          ),
        ),
      ),

      // History
      ListView.builder(
        padding: EdgeInsets.only(top: 10),
        itemCount: orderNumber.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 10,
            ),
            child: OrdersItem(
              text1: orderNumber[index],
              text2: orderStatus[index],
              text3: orderDate[index],
              price: orderPrice[index],
              bgColor: statusColor[index],
            ),
          );
        },
      ),
    ],
  ),
),
);
} }