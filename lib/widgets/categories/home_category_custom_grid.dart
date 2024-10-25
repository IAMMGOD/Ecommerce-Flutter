// import 'package:ecommerce2_flutter/model/category_model.dart';
// import 'package:flutter/material.dart';
// import 'package:ecommerce2_flutter/screens/product_list_screen.dart';
//
//
// class CustomContainerHomePage extends StatelessWidget {
//  final Category category;
//
//   CustomContainerHomePage({
//     required this.category
//   }) ;
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.start,
//       children: [
//         GestureDetector(
//           onTap: (){
//             Navigator.pushNamed(context,
//               'productGridView', arguments: category);
//           },
//           child: Container(
//             height: 80,
//             width: 80,
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black.withOpacity(0.3), // Shadow color
//                   spreadRadius: 2, // Spread radius
//                   blurRadius: 4, // Blur radius
//                   offset: const Offset(0, 3), // Offset in x and y directions
//                 ),
//               ],
//             ),
//             child: ClipOval(
//               child: Image.asset(
//                 category.imagePath,
//                 fit: BoxFit.cover, // Image fit within the circle
//                 width: 50, // Adjust width and height of the image as per your design
//                 height: 50,
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

import 'package:ecommerce2_flutter/model/category_model.dart';
import 'package:ecommerce2_flutter/screens/mainpage.dart';
import 'package:ecommerce2_flutter/screens/product_list_screen.dart';
import 'package:ecommerce2_flutter/screens/profilescreen.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:provider/provider.dart';

import '../../providers/category_provider.dart';

class CustomContainerHomePage extends StatelessWidget {
  final Category category;

  CustomContainerHomePage({required this.category});

  @override
  Widget build(BuildContext context) {
    final categoryProvider=Provider.of<CategoryProvider>(context);
   final category2 = categoryProvider.category;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
           MainPage.pushNewScreen(context, ProductListScreen(category: category,));
          },
          child: Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 4,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: ClipOval(
              child: Image.asset(
                category.imagePath,
                fit: BoxFit.cover,
                width: 50,
                height: 50,
              ),
            ),
          ),
        ),
      ],
    );
  }
}