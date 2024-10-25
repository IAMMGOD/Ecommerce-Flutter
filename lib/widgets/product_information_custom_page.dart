// product_information_custom_page.dart

import 'package:flutter/material.dart';
import '../model/product_model.dart';
import 'package:provider/provider.dart';
import '../providers/cart_provider.dart';

class ProductInformationCustomPage extends StatelessWidget {
  Product? product;

  ProductInformationCustomPage({ this.product});

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        AspectRatio(
          aspectRatio: 20 / 9,
          child: Image.asset(
            product!.imagePath,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 16.0),
        Text(
          product!.title,
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8.0),
        Text(
          product!.description,
          style: TextStyle(fontSize: 16.0),
        ),
        SizedBox(height: 16.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              '\$${product?.Price}',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                cartProvider.addToCart(product!);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Added to Cart'),
                    duration: Duration(seconds: 2),
                    action: SnackBarAction(
                      label: 'Undo',
                      onPressed: () {
                        cartProvider.addToCart(product!);
                      },
                    ),
                  ),
                );
              },
              child: Text('Add to Cart'),
            ),
          ],
        ),
      ],
    );
  }
}
