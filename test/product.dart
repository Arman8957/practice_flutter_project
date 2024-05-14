class Product {
  final int id; // Unique identifier for each product
  final String name;
  final String description;
  final double price;
  final String image; // URL or local path to the product image
  int quantity = 0; // Quantity in the cart (initially 0)

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.image,
  });
}
