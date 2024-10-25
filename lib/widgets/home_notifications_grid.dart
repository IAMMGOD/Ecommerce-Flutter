import 'package:flutter/material.dart';
import 'home_notification_custom_grid.dart';

class Notificationgrid extends StatelessWidget {
  final List<Map<String, String>> data = [
    {
      'imagePath': 'assets/8-white-leaf-8-urbanbox-white-black-original-imagvgf4cuzs2hrw.webp',
    },
    {
      'imagePath': 'assets/gh-water-bottles-65c68157bbf46.png',

    },
    {
      'imagePath': 'assets/index-bomber-65a7feeaf2ded.jpg',
    },
    {
      'imagePath': 'assets/Knitwin_Silk_Cotton_Socks_Red-1.jpg',
    },
    {
      'imagePath': 'assets/mobile_phone.jpg',
    },
    {
      'imagePath': 'assets/prod-1007554-aio-desktop-inspiron-5430-optiplex-7420-plus-km5221w-800x620.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        scrollDirection: Axis.horizontal,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          // Adjust the following values for spacing as needed
          // crossAxisSpacing: 5.0,
          mainAxisSpacing: 5.0,
          childAspectRatio: 1.2, // Adjust to change the aspect ratio of items
        ),
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) {
          return CustomGridNotification(
            imagePath: data[index]['imagePath']!,
          );
        },
      ),
    );
  }
}
