import 'package:ecommerce2_flutter/model/product_model.dart';
import 'package:flutter/cupertino.dart';

class ProductProvider extends ChangeNotifier{
  final List<Product> data = [
    //bottles
    Product(imagePath: 'assets/bottle1.jpg', title: 'Bottle One', Price: 49.00, description: 'Customized BPA Free Stainless Steel Double \n Wall Vacuum Flask Bottle Narrow Mouth 500ML Sports Water Bottle with Leak-proof Lid', id: 'Bottle'),
    Product(imagePath: 'assets/bottle2.webp', title: 'Bottle Two', Price: 39.00, description: 'Customized BPA Free Stainless Steel Double \n Wall Vacuum Flask Bottle Narrow Mouth 500ML Sports Water Bottle with Leak-proof Lid', id: 'Bottle'),
    Product(imagePath: 'assets/bottle3.jpg', title: 'Bottle Three', Price: 9.00, description: 'Customized BPA Free Stainless Steel Double \n Wall Vacuum Flask Bottle Narrow Mouth 500ML Sports Water Bottle with Leak-proof Lid', id: 'Bottle'),
    Product(imagePath: 'assets/bottle4.webp', title: 'Bottle Four', Price:  69.00, description: 'Customized BPA Free Stainless Steel Double \n Wall Vacuum Flask Bottle Narrow Mouth 500ML Sports Water Bottle with Leak-proof Lid', id: 'Bottle'),

    //shoes
    Product(imagePath: 'assets/shoes1.webp', title: 'Shoes One', Price: 249.00, description: "Manufacturer's Silicone Shoe Cover Thickened 2024 Rain Dirt-Proof for Outdoor Use Convenient Carry Tik Tok Winter Summer", id: 'Shoes'),
    Product(imagePath: 'assets/shoes2.jpg', title: 'Shoes Two', Price: 129.00, description: "Manufacturer's Silicone Shoe Cover Thickened 2024 Rain Dirt-Proof for Outdoor Use Convenient Carry Tik Tok Winter Summer", id: 'Shoes'),
    Product(imagePath: 'assets/shoes3.jpg', title: 'Shoes Three', Price: 339.00, description: "Manufacturer's Silicone Shoe Cover Thickened 2024 Rain Dirt-Proof for Outdoor Use Convenient Carry Tik Tok Winter Summer", id: 'Shoes'),
    Product(imagePath: 'assets/shoes4.png', title: 'Shoes Four', Price: 599.00, description: "Manufacturer's Silicone Shoe Cover Thickened 2024 Rain Dirt-Proof for Outdoor Use Convenient Carry Tik Tok Winter Summer", id: 'Shoes'),

    //phones
    Product(imagePath: 'assets/phone1.jpeg', title: 'Phone One', Price: 549.00, description: "Realme 12 Pro Plus 5G Snapdragon 7s Gen 2 64MP Periscope Telephoto Camera 67W 5000mAh Battery 6.7'' Screen 5g smart phone", id: 'Phones'),
    Product(imagePath: 'assets/phone2.webp', title: 'Phone Two', Price:  999.00, description: "Realme 12 Pro Plus 5G Snapdragon 7s Gen 2 64MP Periscope Telephoto Camera 67W 5000mAh Battery 6.7'' Screen 5g smart phone", id: 'Phones'),
    Product(imagePath: 'assets/phone3.webp', title: 'Phone Three', Price:  1579.00, description: "Realme 12 Pro Plus 5G Snapdragon 7s Gen 2 64MP Periscope Telephoto Camera 67W 5000mAh Battery 6.7'' Screen 5g smart phone", id: 'Phones'),
    Product(imagePath: 'assets/phone4.webp', title: 'Phone Four', Price:  666.00, description: "Realme 12 Pro Plus 5G Snapdragon 7s Gen 2 64MP Periscope Telephoto Camera 67W 5000mAh Battery 6.7'' Screen 5g smart phone", id: 'Phones'),

    //sweater
    Product(imagePath: 'assets/sweater1.webp', title: 'Sweater One', Price:  69.00, description: "Wholesale Custom Logo Long Sleeve Pullover Patch Sorority Uniform Letterman Varsity Sweater Women", id: 'Sweater'),
    Product(imagePath: 'assets/sweater2.jpg', title: 'Sweater Two', Price: 75.00, description: "Wholesale Custom Logo Long Sleeve Pullover Patch Sorority Uniform Letterman Varsity Sweater Women", id: 'Sweater'),
    Product(imagePath: 'assets/sweater3.jpg', title: 'Sweater Three', Price: 89.00, description: "Wholesale Custom Logo Long Sleeve Pullover Patch Sorority Uniform Letterman Varsity Sweater Women", id: 'Sweater'),
    Product(imagePath: 'assets/sweater4.jpeg', title: 'Sweater Four', Price:  52.00, description: "Wholesale Custom Logo Long Sleeve Pullover Patch Sorority Uniform Letterman Varsity Sweater Women", id: 'Sweater'),

    //socks
    Product(imagePath: 'assets/socks1.webp', title: 'Socks One', Price: 29.00, description: "Cmax Wholesale Multicolor Vintage Warm Thick Wool Socks Womens Sock", id: 'Socks'),
    Product(imagePath: 'assets/socks2.jpeg', title: 'Socks Two', Price: 14.00, description: "Cmax Wholesale Multicolor Vintage Warm Thick Wool Socks Womens Sock", id: 'Socks'),
    Product(imagePath: 'assets/socks3.webp', title: 'Socks Three', Price: 33.0, description: "Cmax Wholesale Multicolor Vintage Warm Thick Wool Socks Womens Sock", id: 'Socks'),
    Product(imagePath: 'assets/socks4.webp', title: 'Socks Four', Price: 216.00, description: "Cmax Wholesale Multicolor Vintage Warm Thick Wool Socks Womens Sock", id: 'Socks'),

    //pc
    Product(imagePath: 'assets/pc1.webp', title: 'PC One', Price: 838.00, description: "15.6 Inch Intel Core i7 8GB RAM 128GB 256GB 512GB 1TB SSD Win 10 Laptop Home School Business Notebook Computer Gaming", id: 'pc'),
    Product(imagePath: 'assets/pc2.webp', title: 'PC Two', Price: 898.00, description: "15.6 Inch Intel Core i7 8GB RAM 128GB 256GB 512GB 1TB SSD Win 10 Laptop Home School Business Notebook Computer Gaming", id: 'pc'),
    Product(imagePath: 'assets/pc3.jpg', title: 'PC Three', Price: 1015.00, description: "15.6 Inch Intel Core i7 8GB RAM 128GB 256GB 512GB 1TB SSD Win 10 Laptop Home School Business Notebook Computer Gaming", id: 'pc'),
    Product(imagePath: 'assets/pc4.jpg', title: 'PC Four', Price: 971.00, description: "15.6 Inch Intel Core i7 8GB RAM 128GB 256GB 512GB 1TB SSD Win 10 Laptop Home School Business Notebook Computer Gaming", id: 'pc'),

  ];

  List<Product>  fetchSorteList(String categoryID){
    List<Product> sortedList = [];
    for(var product in data ){
      if(product.id == categoryID){
        sortedList.add(product);
      }
    }
    return sortedList;
  }

}