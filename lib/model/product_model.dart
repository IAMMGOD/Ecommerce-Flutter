import 'dart:ffi';

class Product {
  final String imagePath;
  final String title;
  final double Price;
  final String id;
  final String description;

  Product({
    required this.imagePath,
    required this.title,
    required this.Price,
    required this.description,
    required this.id
  });
}
