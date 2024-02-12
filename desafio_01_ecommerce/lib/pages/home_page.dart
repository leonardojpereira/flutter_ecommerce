// home_page.dart

import "package:flutter/material.dart";
import "package:flutter_05_ecommerce/components/bottom_nav_bar.dart";
import "package:flutter_05_ecommerce/components/drawer.dart";
import "package:flutter_05_ecommerce/pages/cart_page.dart";
import "package:flutter_05_ecommerce/pages/shop_page.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    ShopPage(),
    CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      drawer: DrawerWidget(),
      body: _pages[_selectedIndex],
    );
  }
}
