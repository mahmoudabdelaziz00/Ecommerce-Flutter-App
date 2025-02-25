import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:ecommerce_s1e/screens/home_screen.dart';
import 'package:ecommerce_s1e/screens/profiles_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cart_screen.dart';
import 'favoriets_screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {

  int pageIndex = 0;

  List<Widget> pages = [
    HomeScreen(),
    CartScreen(),
    FavorietsScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: pageIndex,
        children: pages,
      ),
      floatingActionButton: SafeArea(
        child: FloatingActionButton(
          onPressed: (){},
          child: Icon(
            Icons.qr_code,
            size: 20,
          ),
          backgroundColor: Color(0xFFEF6969),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: [
          CupertinoIcons.home,
          CupertinoIcons.cart,
          CupertinoIcons.heart,
          CupertinoIcons.profile_circled,
        ],

        inactiveColor: Colors.black.withOpacity(0.5),
        elevation: 0,
        activeColor: Color(0xFFEF6969),
        activeIndex: pageIndex,
        rightCornerRadius: 10,
        leftCornerRadius: 10,
        iconSize: 20,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.softEdge,
        onTap: (index){
          setState(() {
            pageIndex = index ;
          });
        },
      ),
    );
  }
}
