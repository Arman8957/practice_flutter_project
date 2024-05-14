import 'package:flutter/foundation.dart';
import 'product.dart';
class CartProvider extends ChangeNotifier {
  final List<Product> _cartItems = [];

  List<Product> get cartItems => _cartItems.toList();

  double get totalPrice => _cartItems.fold(0.0, (sum, item) => sum + item.price * item.quantity);

  void addToCart(Product product) {
    final existingIndex = _cartItems.indexWhere((item) => item.id == product.id);
    if (existingIndex >= 0) {
      _cartItems[existingIndex].quantity++;
    } else {
      product.quantity = 1;
      _cartItems.add(product);
    }
    notifyListeners();
  }

  void removeFromCart(Product product) {
    final index = _cartItems.indexOf(product);
    if (index >= 0) {
      if (product.quantity > 1) {
        product.quantity--;
      } else {
        _cartItems.removeAt(index);
      }
      notifyListeners();
    }
  }
}