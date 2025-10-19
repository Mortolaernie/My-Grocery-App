import 'package:flutter/material.dart';
import 'package:my_grocery_app/product.dart';

class FavItem {
  final Product product;
  int quantity;
  FavItem({required this.product, this.quantity = 1});
}

class Favprovider extends ChangeNotifier {
  final Map<String, FavItem> _items = {};
  Map<String, FavItem> get items => _items;

  int get itemCount => _items.length;

  double get totalAmount {
    double total = 0.0;
    _items.forEach((key, FavItem) {
      total += FavItem.product.price * FavItem.quantity;
    });
    return total;
  }

  void addItem(Product product) {
    if (_items.containsKey(product.id)) {
      _items[product.id]!.quantity++;
    } else {
      _items[product.id] = FavItem(product: product);
    }
    notifyListeners();
  }

  void removeItem(String productId) {
    _items.remove(productId);
    notifyListeners();
  }
}
