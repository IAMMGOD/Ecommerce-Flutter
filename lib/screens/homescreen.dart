import 'package:ecommerce2_flutter/screens/category_screen.dart';
import 'package:flutter/material.dart';
import '../widgets/categories/home_category_grid.dart';
import '../widgets/home_notifications_grid.dart';
import 'mainpage.dart';


class HomeScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Row(
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text('Welcome, Herah',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),)),
                SizedBox(
                  width: 199,
                ),
                Icon(Icons.notification_add_rounded),
              ],
            ),
      
            Padding(
              padding: EdgeInsets.all((8.0)),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(top: 8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.grey[300],
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none
                          ),
                          hintText: 'Search...',
                          hintStyle: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 18
                          ),
                          prefixIcon: Icon(Icons.search),
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                          // prefixIcon: Container(
                          //   padding: EdgeInsets.all(15),
                          //   child: Image.asset('assets/icons/search.png'),//chosen image
                          //   width: 18,
                          // )
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Notificationgrid(),
            ),
      
      
            Row(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text('Categories',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),),
                ),
                const SizedBox(
                  width: 220,
                ),
                GestureDetector(
                  onTap: (){
                    MainPage.pushNewScreen(context, CategoryScreen());
                  },
                  child: const Text('View all',
                    style: TextStyle(
                    ),),
                )
              ],
            ),
            SizedBox(height: 20,),
            //insert the gridview here
            Expanded(
              child: CategoryHomePage(),
            )
          ]
      ),
    );
  }
}