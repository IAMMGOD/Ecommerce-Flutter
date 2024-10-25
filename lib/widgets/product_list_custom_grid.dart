import 'package:ecommerce2_flutter/container/round_container.dart';
import 'package:ecommerce2_flutter/container/round_image.dart';
import 'package:ecommerce2_flutter/screens/product_information_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../model/product_model.dart';
import '../screens/mainpage.dart';
import '../sizes.dart';

class ProductListCustomGrid extends StatelessWidget {
  final Product product;

  ProductListCustomGrid({required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {

        MainPage.pushNewScreen(context, ProductInformation(product: product ,));
      },

        child: Container(
          width: 160,
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.white.withOpacity(0.1),
                spreadRadius: 7,
                blurRadius: 50,
                offset: const Offset(0, 2)
              )
            ],
            borderRadius: BorderRadius.circular(KSizes.pImageRadius),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RoundedContainer(
                    height: 120,
                    child: Padding(
                      padding: EdgeInsets.all(KSizes.sm),
                      child: Stack(
                        children: [
                          RoundedImage(
                            imageUrl: product.imagePath,
                            applyImageRadius: true,
                            ),
                          // Align(
                          //   alignment:Alignment.topLeft ,
                          //   child: IconButton(
                          //     icon: Icon(Icons.shopping_cart),
                          //     onPressed: () {
                          //       // Implement cart icon tap action
                          //     },
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0),
                      )
                    ),
                    child: const SizedBox(
                      height: 5,
                      width: 5,
                      child: Center(
                        child: Icon(Icons.shopping_cart),
                      ),
                    ),
                  )
                ],
              ),
            const SizedBox(height: 5),
            /// Rating
              Center(
                child: RatingBar.builder(
                  initialRating:5,
                  minRating: 1,
                  //direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 20,
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    // Implement rating update logic
                  },
                ),
              ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              /// Name
              Padding(
                padding: const EdgeInsets.only(left: KSizes.sm),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title,
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(5.0),
                  )
                ),
                child: const SizedBox(
                  width: 5,
                  height: 5,
                  child: Center(
                    child: Icon(Icons.favorite_outline),
                  ),
                ),
              )
            ],
          ),


                // child: Container(
                //   color: Colors.teal,
                //   width: 500,
                //   height: 800,
                //   child: RoundedContainer(
                //     child: Stack(
                //       children: <Widget>[
                //         Positioned(
                //           top: 7,
                //           left: 7,
                //           child: IconButton(
                //             icon: Icon(Icons.shopping_cart),
                //             onPressed: () {
                //               // Implement cart icon tap action
                //             },
                //           ),
                //         ),
                //         Positioned(
                //           top: 7,
                //           right: 7,
                //           child: IconButton(
                //             icon: Icon(Icons.favorite_border),
                //             onPressed: () {
                //               // Implement favorite icon tap action
                //             },
                //           ),
                //         ),

                // SizedBox(
                //   height: 200,
                // ),
                // Column(
                //   crossAxisAlignment: CrossAxisAlignment.stretch,
                //   children: <Widget>[
                //

          ]
        ),
      )
    );
  }
}