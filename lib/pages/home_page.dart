import 'package:flutter/material.dart';
import 'package:ecommerce_flutter/components/bottom_navbar.dart';

import 'cart_page.dart';
import 'shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // variable to control navigation, 0 = shop, 1 = cart
  int _selectedIndex = 0;

// this method will help navigate between the pages
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // pages to switch
  final List<Widget> _pages = [
    // Shop page
    const ShopPage(),
    // Cart page
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: BottomNavbar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
    );
  }
}
