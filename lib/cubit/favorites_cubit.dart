import 'package:flutter_bloc/flutter_bloc.dart'; import '../model/product.dart';
class FavoritesCubit extends Cubit<List<Product>> { FavoritesCubit() : super([]);
bool isFavorite(Product product) { return state.any((item) => item.id == product.id); }
void toggleFavorite(Product product) { List<Product> newFavorites = List.from(state);
if (isFavorite(product)) {
  newFavorites.removeWhere(
        (item) => item.id == product.id,
  );
} else {
  newFavorites.add(product);
}

emit(newFavorites);
}
void clearAll() { emit([]); } }
