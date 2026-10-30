import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../model/product.dart';
import '../cubit/favorites_cubit.dart';
import 'favorites_screen.dart';
class ProductsScreen extends StatelessWidget {
  ProductsScreen({super.key});
final List<Product> products =
[Product(id: 1, name: 'Apple', price: 30,image:'assets/images/apple.png' ),
    Product(id: 2, name: 'Banana', price: 20,image: 'assets/images/banana.png'),
  Product(id: 3, name: 'Orange', price: 25,image: 'assets/images/orange.png'),
  Product(id: 4, name: 'Mango', price: 40,image: 'assets/images/mango.png'),
  Product(id: 5, name: 'blueberry', price: 15,image:'assets/images/blueberry.png' ),
  Product(id: 6, name: 'milk', price: 20,image: 'assets/images/milk.png'),
  Product(id: 7, name: 'bread', price: 18,image: 'assets/images/bread.png'),
  Product(id: 8, name: 'Strawberry', price: 50,image: 'assets/images/strawberry.png'), ];
@override
Widget build(BuildContext context) { return Scaffold( appBar: AppBar( title: const Text('Products'),
  actions: [
    BlocBuilder<FavoritesCubit, List<Product>>(
      builder: (context, favorites) {
        return Badge(
          isLabelVisible: favorites.isNotEmpty,
          label: Text(
            favorites.length.toString(),
          ),
          child: IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      FavoritesScreen(),
                ),
              );
            },
          ),
        );
      },
    ),
  ],
),

  body: ListView.builder(
    itemCount: products.length,
    itemBuilder: (context, index) {
      final product = products[index];

      return Card(
        margin: const EdgeInsets.all(8),

        child: ListTile(
          leading: Image.asset(
            product.image,
            width: 60,
            height: 60,
            fit: BoxFit.contain,
          ),

          title: Text(
            product.name,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),

          subtitle: Text(
            '${product.price} EGP',
          ),

          trailing:
          BlocBuilder<FavoritesCubit, List<Product>>(
            builder: (context, favorites) {
              final isFavorite = context
                  .read<FavoritesCubit>()
                  .isFavorite(product);

              return IconButton(
                icon: Icon(
                  isFavorite
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color: isFavorite
                      ? Colors.red
                      : Colors.grey,
                ),

                onPressed: () {
                  context
                      .read<FavoritesCubit>()
                      .toggleFavorite(product);
                },
              );
            },
          ),
        ),
      );
    },
  ),
);
} }