// product_information.dart

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/product_model.dart';
import '../providers/cart_provider.dart';
import '../widgets/product_information_custom_page.dart';

class ProductInformation extends StatelessWidget {
Product? product;

  ProductInformation({this.product});
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('${product!.title}'),
      ),
      body:// Provide CartProvider
         SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: ProductInformationCustomPage(product: product),
        ),
    );
  }
}
