import 'package:apparent/pages/cart_page.dart';
import 'package:apparent/pages/settings_page.dart';
import 'package:apparent/pages/videos_page.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import '../widgets/bottom_nav_bar.dart';

class ResourcesPage extends StatefulWidget {
  @override
  State<ResourcesPage> createState() => _ResourcesPageState();
}

class _ResourcesPageState extends State<ResourcesPage> {
  int _selectedIndex = 2;
  final List<Widget> _pages = [
    Center(child: Text('Resources'.tr(), style: TextStyle(fontSize: 24))),
    VideosPage(),
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
