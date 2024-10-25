import 'package:ecommerce2_flutter/model/category_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/category_provider.dart';
import 'home_category_custom_grid.dart';

class CategoryHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final categoryProvider = Provider.of<CategoryProvider>(context);
    return Scaffold(
      body: GridView.builder(
        scrollDirection: Axis.horizontal,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          // Adjust the following values for spacing as needed
          // crossAxisSpacing: 1.0,
          // mainAxisSpacing: 1.0,
          childAspectRatio: 3, // Adjust to change the aspect ratio of items
        ),
        itemCount: categoryProvider.data.length,
        itemBuilder: (BuildContext context, int index) {
          return CustomContainerHomePage(
            category: categoryProvider.data[index],
          );
        },
      ),
    );
  }
}
