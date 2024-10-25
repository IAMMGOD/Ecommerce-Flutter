// cart_provider.dart

import 'package:flutter/material.dart';
import '../model/product_model.dart';


class CartProvider extends ChangeNotifier {
  List<Product> _cartItems = [];

  List<Product> get cartItems => _cartItems;

  void addToCart(Product product) {
    _cartItems.add(product);
    notifyListeners();
  }

  void removeFromCart(Product product) {
    _cartItems.remove(product);
    notifyListeners();
  }

  double getTotalPrice() {
    return _cartItems.fold(0, (total, current) => total + current.Price);
  }
}
