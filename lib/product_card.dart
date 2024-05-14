import 'package:flutter/material.dart';
import 'product.dart';
class ProductCard extends StatelessWidget {
  final Product product;
  final VoidCallback onAddToCart;

  const ProductCard({
    Key? key,
    required this.product,
    required this.onAddToCart,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(product.image),
        title: Text(product.name),
        subtitle: Text('\$${product.price}'),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('${product.quantity}'),
            IconButton(
              icon: Icon(Icons.add_shopping_cart),
              onPressed: onAddToCart,
            ),
          ],
        ),
      ),
    );
  }
}