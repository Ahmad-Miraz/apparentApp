import 'package:apparent/pages/Resources_page.dart';
import 'package:apparent/pages/settings_page.dart';
import 'package:apparent/pages/videos_page.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import '../widgets/bottom_nav_bar.dart';

class CartPage extends StatefulWidget {
  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int _selectedIndex = 3;
  final List<Widget> _pages = [
    Center(child: Text('My Cart'.tr(), style: TextStyle(fontSize: 24))),
    ResourcesPage(),
    CartPage(),
    VideosPage(),
    SettingsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavBar(
        selectedIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
