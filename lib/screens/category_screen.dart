import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/category_provider.dart';
import '../widgets/categories/category_screen_custom_grid.dart';

class CategoryScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final categoryProvider = Provider.of<CategoryProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Category'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          // Adjust the following values for spacing as needed
          crossAxisSpacing: 5.0,
          mainAxisSpacing: 5.0,
          childAspectRatio: 0.9, // Adjust to change the aspect ratio of items
        ),
        itemCount: categoryProvider.data.length,
        itemBuilder: (BuildContext context, int index) {
          return CustomContainer(category: categoryProvider.data[index],
          );
        },
      ),
    );
  }
}
