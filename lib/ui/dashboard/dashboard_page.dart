import 'package:flutter/material.dart';

import 'nav_pages/nav_home_page.dart';

class DashboardPage extends StatefulWidget {
  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  List<Widget> navPages = [
    NavHomePage(),

    /// products
    NavHomePage(),

    /// fav
    NavHomePage(),

    /// home
    NavHomePage(),

    /// cart
    NavHomePage(),

    /// profile
  ];

  int selectedNavIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: navPages[0],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        width: 70,
        height: 70,
        child: FloatingActionButton(
          onPressed: (){

        },
          backgroundColor: Colors.deepOrangeAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50)
          ), child: Icon(Icons.home_outlined, color: Colors.white,),
        ),
      ),
    );
  }
}
