import 'package:apparent/pages/Resources_page.dart';
import 'package:apparent/pages/cart_page.dart';
import 'package:apparent/pages/settings_page.dart';
import 'package:apparent/pages/videos_page.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import '../widgets/bottom_nav_bar.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    Center(child: Text('home'.tr(), style: TextStyle(fontSize: 24))),
    VideosPage(),
    ResourcesPage(),
    CartPage(),
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
