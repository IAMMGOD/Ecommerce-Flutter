import 'package:flutter/material.dart';
import 'package:ecommerce2_flutter/screens/product_list_screen.dart';

  class CustomGridNotification extends StatelessWidget {
  final String imagePath;

  CustomGridNotification({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        GestureDetector(
          // onTap: (){
          //   Navigator.push(context,
          //       MaterialPageRoute(builder: (context) => ProductListScreen(category: category,)));
          // },
          child: Container(
            height: 120,
            width: 200,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular((10))
              // boxShadow: [
              //   BoxShadow(
              //     color: Colors.black.withOpacity(0.3), // Shadow color
              //     spreadRadius: 2, // Spread radius
              //     blurRadius: 4, // Blur radius
              //     offset: const Offset(0, 3), // Offset in x and y directions
              //   ),
              // ],
            ),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover, // Image fit within the circle
                width: 50, // Adjust width and height of the image as per your design
                height: 50,
              ),
            ),
          ),
      ],
    );
  }
}
