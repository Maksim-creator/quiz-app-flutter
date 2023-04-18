import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../widgets/SettingsWidgets/AccountSettings.dart';
import '../../widgets/SettingsWidgets/OtherSettings.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  void logout() {
    SharedPreferences.getInstance().then((prefs) {
      prefs.clear();
      Navigator.of(context).pushReplacementNamed('/login_screen');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
              onPressed: () => Navigator.of(context).pushNamed('/main_screen'),
              icon: const Icon(
                Icons.chevron_left,
                color: Colors.black,
                size: 32,
              )),
          title: const Text(
            'Settings',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                children: [
                  AccountSettings(),
                  OtherSettings(),
                ],
              ),
              TextButton(
                  onPressed: logout,
                  child: Text(
                    'Logout',
                    style: TextStyle(color: Colors.red.shade400, fontSize: 17),
                  ))
            ],
          ),
        )));
  }
}
