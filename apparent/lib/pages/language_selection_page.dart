import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'home_page.dart';

class LanguageSelectionPage extends StatelessWidget {
  void _setLanguage(BuildContext context, Locale locale) async {
    await context.setLocale(locale);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('first_launch', false);
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (_) => HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('select_language'.tr())),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () => _setLanguage(context, Locale('en')),
            child: Text('English'),
          ),
          ElevatedButton(
            onPressed: () => _setLanguage(context, Locale('es')),
            child: Text('Español'),
          ),
          TextButton(
            onPressed: () => _setLanguage(context, Locale('en')),
            child: Text('skip'.tr()),
          ),
        ],
      ),
    );
  }
}
