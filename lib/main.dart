import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
import 'product.dart';
import 'products.dart';
import 'cart_provider.dart';
import 'product_card.dart'

void main() => runApp(
  ChangeNotifierProvider(
    create: (context) => CartProvider(),
    child: MyApp(),
  ),
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping Cart',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Shopping Cart'),
        ),
        body: ShoppingCartList(),
      ),
    );
  }
}


class ShoppingCartList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);

    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];
        return ProductCard(
          product: product,
          onAddToCart: () => cartProvider.addToCart(product),
        );
      },
    );
  }
}