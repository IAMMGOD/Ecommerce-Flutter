import 'package:flutter/material.dart';
import '../../model/category_model.dart';
import '../../screens/mainpage.dart';
import '../../screens/product_list_screen.dart';


class CustomContainer extends StatelessWidget {
  final Category category;

  CustomContainer({
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: (){
            MainPage.pushNewScreen(context, ProductListScreen(category: category,));
          },
          child: Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3), // Shadow color
                  spreadRadius: 2, // Spread radius
                  blurRadius: 4, // Blur radius
                  offset: const Offset(0, 3), // Offset in x and y directions
                ),
              ],
            ),
            child: ClipOval(
              child: Image.asset(
               category.imagePath,
                fit: BoxFit.cover, // Image fit within the circle
                width: 50, // Adjust width and height of the image as per your design
                height: 50,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
