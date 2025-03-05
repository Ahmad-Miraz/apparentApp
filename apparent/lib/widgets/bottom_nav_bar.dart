import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTap;

  const BottomNavBar({required this.selectedIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.black,
      onTap: onTap,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home'.tr(),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.video_library),
          label: 'Videos'.tr(),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.inventory_2),
          label: 'Resources'.tr(),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.local_mall),
          label: 'Cart'.tr(),
        ),
      ],
    );
  }
}
