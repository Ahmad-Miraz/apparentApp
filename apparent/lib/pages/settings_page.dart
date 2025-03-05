import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:easy_localization/easy_localization.dart';
import '../services/theme_service.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeService = Provider.of<ThemeService>(context);
    bool isDarkMode = themeService.themeMode == ThemeMode.dark;

    return Scaffold(
      appBar: AppBar(
        title: Text('settings'.tr()),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ListTile(
              title: Text('language'.tr()),
              trailing: DropdownButton<Locale>(
                value: context.locale,
                onChanged: (Locale? newLocale) {
                  if (newLocale != null) {
                    context.setLocale(newLocale);
                  }
                },
                items: [
                  DropdownMenuItem(
                    value: Locale('en'),
                    child: Text('English'),
                  ),
                  DropdownMenuItem(
                    value: Locale('es'),
                    child: Text('Español'),
                  ),
                ],
              ),
            ),
            SwitchListTile(
              title: Text(isDarkMode ? 'dark_mode'.tr() : 'light_mode'.tr()),
              value: isDarkMode,
              onChanged: (value) => themeService.toggleTheme(value),
            ),
          ],
        ),
      ),
    );
  }
}
