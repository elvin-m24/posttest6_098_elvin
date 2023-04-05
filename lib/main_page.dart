// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:posttest6_098_elvin/account_page.dart';
import 'package:posttest6_098_elvin/cart_page.dart';
import 'package:posttest6_098_elvin/favorite_page.dart';
import 'package:posttest6_098_elvin/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  static final List<Widget> _pageOptions = [
    HomePage(),
    FavoritePage(),
    CartPage(),
    AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    Widget bottomNav() {
      return ClipRect(
        child: GNav(
          gap: 10,
          color: Colors.white,
          activeColor: Colors.orange,
          backgroundColor: Colors.black,
          tabs: [
            GButton(
              icon: Icons.home,
              text: "Home",
            ),
            GButton(
              icon: Icons.favorite,
              text: "Favorite",
            ),
            GButton(
              icon: Icons.shopping_cart,
              text: "Cart",
            ),
            GButton(
              icon: Icons.person,
              text: "Account",
            ),
          ],
          selectedIndex: _selectedIndex,
          onTabChange: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      );
    }

    return Scaffold(
      bottomNavigationBar: bottomNav(),
      body: _pageOptions[_selectedIndex],
    );
  }
}
