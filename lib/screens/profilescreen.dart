import 'dart:ui';

import 'package:flutter/material.dart';

class Profilescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[100],
      body: Padding(
        padding: const EdgeInsets.only(top: 60),
        child: Column(
          children: [
            // Profile Text
            const Text(
              'Profile',
              style: TextStyle(fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10.0),
            // Circular Avatar
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 160.0,
                  height: 160.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.red.withOpacity(0.1),
                      width: 4.0,
                    ),
                  ),
                ),
                Container(
                  width: 120.0,
                  height: 120.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.red.withOpacity(0.2),
                      width: 4.0,
                    ),
                  ),
                  child: const Center(
                    child: CircleAvatar(
                      radius: 45,
                      backgroundImage: AssetImage('assets/shoes2.jpg'),
                    ),
                  ),
                ),
              ],
            ),
            const Text('Kendre',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),),
            const SizedBox(height: 50.0),
            // Card with List of buttons
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                child: Card(
                  color: Colors.orange[50],
                  elevation: 0,
                  child: ListView(
                    children: [
                      // Edit Profile button
                      ListTile(
                        leading: const Icon(
                          Icons.person,
                          color: Colors.orange,
                        ),
                        title: const Text(
                          'Edit Profile',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.orange,
                          size: 16,
                        ),
                        onTap: () {
                          // Handle edit profile button press
                        },
                      ),
                      const SizedBox(height: 10,),
                      // Shopping Address button
                      ListTile(
                        leading: const Icon(Icons.location_on,
                          color: Colors.orange,
                        ),
                        title: const Text('Shipping Address',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        trailing: const Icon(Icons.arrow_forward_ios,
                            color: Colors.orange,
                            size: 16),
                        onTap: () {
                          // Handle shopping address button press
                        },
                      ),
                      const SizedBox(height: 10,),
                      // Wishlist button
                      ListTile(
                        leading: const Icon(Icons.favorite,
                          color: Colors.orange,),

                        title: const Text('Wishlist',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        trailing: const Icon(Icons.arrow_forward_ios,
                            color: Colors.orange,
                            size: 16),
                        onTap: () {
                          // Handle wishlist button press
                        },
                      ),
                      const SizedBox(height: 10,),
                      // Order History button
                      ListTile(
                        leading: const Icon(Icons.history,
                          color: Colors.orange,),

                        title: const Text('Order History',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios,
                            color: Colors.orange,
                            size: 16),
                        onTap: () {
                          // Handle order history button press
                        },
                      ),
                      const SizedBox(height: 10,),
                      // Notification button
                      ListTile(
                        leading: const Icon(Icons.notifications,
                          color: Colors.orange,),

                        title: const Text('Notification',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios,
                            color: Colors.orange   ,
                            size: 16),
                        onTap: () {
                          // Handle cards button press
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
