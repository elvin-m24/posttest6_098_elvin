import 'package:flutter/material.dart';
import 'package:posttest6_098_elvin/account_page.dart';
import 'package:posttest6_098_elvin/cart_page.dart';
import 'package:posttest6_098_elvin/favorite_page.dart';
import 'package:posttest6_098_elvin/home_page.dart';
import 'package:posttest6_098_elvin/main_page.dart';
import 'package:posttest6_098_elvin/splash_page.dart';
import 'package:posttest6_098_elvin/wishlist_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
      routes: {
        '/home_page': (context) => HomePage(),
        '/main_page': (context) => MainPage(),
        '/cart_page': (context) => CartPage(),
        '/account_page': (context) => AccountPage(),
        '/fav_page': (context) => FavoritePage(),
        '/wishlist_card': (context) => WishlistCard(),
      },
    );
  }
}
