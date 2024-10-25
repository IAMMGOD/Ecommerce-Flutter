import 'package:ecommerce2_flutter/model/category_model.dart';
import 'package:ecommerce2_flutter/providers/category_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/product_provider.dart';
import '../widgets/product_list_custom_grid.dart';



class ProductListScreen extends StatelessWidget{
  Category ?category;
  ProductListScreen({super.key, this.category});


  @override
  Widget build(BuildContext context) {

    final productProvider = Provider.of<ProductProvider>(context);


    return Scaffold(
      appBar: AppBar(
        title: Text('${category!.title}'
            ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body:GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,//number of columns
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            childAspectRatio: 1.0,
        ),
        // padding: EdgeInsets.all(10),
        itemCount: productProvider.fetchSorteList(category!.ID).length,
        itemBuilder: (
            BuildContext context, int index) {
          return ProductListCustomGrid(
           product:  productProvider.fetchSorteList(category!.ID)[index] ,
          );
        },)
    );
  }
}


