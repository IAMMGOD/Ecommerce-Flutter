
import 'package:ecommerce2_flutter/model/product_model.dart';
import 'package:ecommerce2_flutter/providers/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body:
         Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: ListView.builder(
                  itemCount: cartProvider.cartItems.length,
                  itemBuilder: (context, index) {
                    final Product product = cartProvider.cartItems[index];
                    return
                      Container(child: Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("${product.title}"),
                            Text('${product.Price}'),
                          Image.asset(product.imagePath,
                          width: 100,
                            height: 100,
                          ),
                          IconButton(
                              icon: Icon(Icons.remove_circle),
                              onPressed: () {
                                cartProvider.removeFromCart(product);
                              },
                          )]
                          ),
                      ),
                      );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Total: \$${cartProvider.getTotalPrice().toStringAsFixed(2)}',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Implement checkout logic
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Checkout'),
                              content: Text('Implement your checkout logic here.'),
                              actions: <Widget>[
                                TextButton(
                                  child: Text('OK'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                    // Optionally, clear the cart after checkout
                                    // cartProvider.clearCart();
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: Text('Checkout'),
                    ),
                  ],
                ),
              ),
            ],
          ),
    );
  }
}
