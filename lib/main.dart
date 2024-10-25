// import 'package:ecommerce2_flutter/providers/cart_provider.dart';
// import 'package:ecommerce2_flutter/providers/category_provider.dart';
// import 'package:ecommerce2_flutter/providers/product_provider.dart';
// import 'package:ecommerce2_flutter/screens/cartscreen.dart';
// import 'package:ecommerce2_flutter/screens/category_screen.dart';
// import 'package:ecommerce2_flutter/screens/homescreen.dart';
// import 'package:ecommerce2_flutter/screens/product_information_screen.dart';
// import 'package:ecommerce2_flutter/screens/product_list_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'screens/mainpage.dart';
// import 'package:ecommerce2_flutter/main.dart';
//
//
// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   runApp(  MultiProvider(
//     providers: [ ChangeNotifierProvider(
//       create: (context) => CategoryProvider(),
//     ),
//       ChangeNotifierProvider(
//         create: (context) => ProductProvider(),
//       ),
//       ChangeNotifierProvider(
//         create: (context) => CartProvider(),
//       )
//     ],
//   child: MyApp(),
//     ),
//   );
// }
//
// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//
//     return MaterialApp(
//       home: MainPage(),
//       routes: {
//         'productGridView' : (context) => ProductListScreen(),
//         'viewallCategory' : (context) => CategoryScreen(),
//         'productInformation' : (context) => ProductInformation(),
//         '/cart': (context) => CartScreen(),
//       },
//         theme: ThemeData(
//         primarySwatch: Colors.blue,
//     ),
//     );
//   }
// }

import 'package:ecommerce2_flutter/providers/cart_provider.dart';
import 'package:ecommerce2_flutter/providers/category_provider.dart';
import 'package:ecommerce2_flutter/providers/product_provider.dart';
import 'package:ecommerce2_flutter/screens/cartscreen.dart';
import 'package:ecommerce2_flutter/screens/category_screen.dart';
import 'package:ecommerce2_flutter/screens/homescreen.dart';
import 'package:ecommerce2_flutter/screens/product_information_screen.dart';
import 'package:ecommerce2_flutter/screens/product_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/mainpage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CategoryProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ProductProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CartProvider(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
      routes: {
        'productGridView': (context) => ProductListScreen(),
        'viewallCategory': (context) => CategoryScreen(),
        'productInformation': (context) => ProductInformation(),
        '/cart': (context) => CartScreen(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

// class HomeScreen extends StatelessWidget{
//
//   final List<Map<String, String>> data = [
//     {
//       'imagePath':'assets/8-white-leaf-8-urbanbox-white-black-original-imagvgf4cuzs2hrw.webp',
//       'title': '---'
//     },
//     {
//       'imagePath':'assets/gh-water-bottles-65c68157bbf46.png',
//       'title': '---'
//     },
//     {
//       'imagePath':'assets/index-bomber-65a7feeaf2ded.jpg',
//       'title': '---'
//     },
//     {
//       'imagePath':'assets/Knitwin_Silk_Cotton_Socks_Red-1.jpg',
//       'title': '---'
//     },
//     {
//       'imagePath':'assets/mobile_phone.jpg',
//       'title': '---'
//     },
//     {
//       'imagePath':'assets/prod-1007554-aio-desktop-inspiron-5430-optiplex-7420-plus-km5221w-800x620.png',
//       'title': '---'
//     },
//
//
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//
//     return GridView.builder(
//
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 2,//number of columns
//         // crossAxisSpacing:
//         // mainAxisSpacing:
//         // childAspectRatio:
//       ),
//       itemCount: data.length,
//       itemBuilder: (
//           BuildContext context, int index) {
//         return CustomContainer(imagePath: data[index]['imagePath']!, title: data[index]['title']!);
//       },
//
//     );
//   }
//
// }
