import 'package:apparent/pages/Resources_page.dart';
import 'package:apparent/pages/cart_page.dart';
import 'package:apparent/pages/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import '../widgets/bottom_nav_bar.dart';

class VideosPage extends StatefulWidget {
  @override
  State<VideosPage> createState() => _VideosPageState();
}

class _VideosPageState extends State<VideosPage> {
  int _selectedIndex = 1;
  final List<Widget> _pages = [
    Center(child: Text('Videos'.tr(), style: TextStyle(fontSize: 24))),
    ResourcesPage(),
    CartPage(),
    SettingsPage(),
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
