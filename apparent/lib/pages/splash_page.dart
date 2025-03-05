import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'language_selection_page.dart';
import 'home_page.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () async {
      final prefs = await SharedPreferences.getInstance();
      final isFirstLaunch = prefs.getBool('first_launch') ?? true;
      if (isFirstLaunch) {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (_) => LanguageSelectionPage()));
      } else {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => HomePage()));
      }
    });

    return Scaffold(
      body: Center(child: Text('Apparent')),
    );
  }
}
