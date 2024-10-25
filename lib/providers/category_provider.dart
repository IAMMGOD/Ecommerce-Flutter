import 'package:flutter/cupertino.dart';

import '../model/category_model.dart';

class CategoryProvider extends ChangeNotifier{
   Category category =  Category(imagePath: "assets/8-white-leaf-8-urbanbox-white-black-original-imagvgf4cuzs2hrw.webp", title:"Shoes", ID: "Shoes");
  final List<Category> data = [
    Category(imagePath: "assets/8-white-leaf-8-urbanbox-white-black-original-imagvgf4cuzs2hrw.webp", title:"Shoes", ID: "Shoes"),
    Category(imagePath: 'assets/gh-water-bottles-65c68157bbf46.png', title:"Bottle", ID: "Bottle"),
    Category(imagePath: 'assets/index-bomber-65a7feeaf2ded.jpg', title:"Sweater", ID: "Sweater"),
    Category(imagePath:'assets/Knitwin_Silk_Cotton_Socks_Red-1.jpg', title:"Socks", ID: "Socks"),
    Category(imagePath: 'assets/mobile_phone.jpg', title:"Phones", ID: "Phones"),
    Category(imagePath: 'assets/prod-1007554-aio-desktop-inspiron-5430-optiplex-7420-plus-km5221w-800x620.png', title:"pc", ID: "pc"),
  ];

}