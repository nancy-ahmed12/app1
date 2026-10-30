import 'package:flutter/material.dart'; import 'package:flutter_bloc/flutter_bloc.dart';
import '../model/product.dart'; import '../cubit/favorites_cubit.dart';
class FavoritesScreen extends StatelessWidget { FavoritesScreen({super.key});
@override Widget build(BuildContext context) { return Scaffold( appBar: AppBar( title: const Text('Favorites'),
  actions: [
    BlocBuilder<FavoritesCubit, List<Product>>(
      builder: (context, favorites) {
        if (favorites.isEmpty) {
          return const SizedBox();
        }

        return IconButton(
          icon: const Icon(Icons.delete),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text('Clear all'),
                  content: const Text(
                    'Are you sure you want to remove all favorites?',
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Cancel'),
                    ),

                    TextButton(
                      onPressed: () {
                        context
                            .read<FavoritesCubit>()
                            .clearAll();

                        Navigator.pop(context);
                      },
                      child: const Text('Yes'),
                    ),
                  ],
                );
              },
            );
          },
        );
      },
    ),
  ],
),

  body: BlocBuilder<FavoritesCubit, List<Product>>(
    builder: (context, favorites) {
      if (favorites.isEmpty) {
        return const Center(
          child: Column(
            mainAxisAlignment:
            MainAxisAlignment.center,
            children: [
              Icon(
                Icons.favorite_border,
                size: 80,
                color: Colors.grey,
              ),

              SizedBox(height: 15),

              Text(
                'No favorite products',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
        );
      }

      return ListView.builder(
        itemCount: favorites.length,

        itemBuilder: (context, index) {
          final product = favorites[index];

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

              trailing: IconButton(
                icon: const Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),

                onPressed: () {
                  context
                      .read<FavoritesCubit>()
                      .toggleFavorite(product);
                },
              ),
            ),
          );
        },
      );
    },
  ),
);
} }