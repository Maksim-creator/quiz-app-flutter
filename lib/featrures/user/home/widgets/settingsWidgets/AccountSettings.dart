import 'package:flutter/material.dart';
import 'package:quizz_app/assets/colors.dart';
import 'package:quizz_app/featrures/user/home/widgets/settingsWidgets/SettingItem.dart';

class SettingTextItem {
  final String title;
  final String subtitle;
  final Icon icon;
  final Future<Object?> Function() onPress;

  SettingTextItem(
      {required this.subtitle,
      required this.title,
      required this.icon,
      required this.onPress});
}

class AccountSettings extends StatefulWidget {
  const AccountSettings({super.key});

  @override
  State<AccountSettings> createState() => _AccountSettingsState();
}

class _AccountSettingsState extends State<AccountSettings> {
  @override
  Widget build(BuildContext context) {
    List<SettingTextItem> accountSettings = [
      SettingTextItem(
          subtitle: 'Update username, country, etc.',
          onPress: () {
            return Navigator.of(context).pushNamed(
              '/main_screen/settings/update_profile',
            );
          },
          title: 'Update Profile',
          icon: Icon(
            Icons.person_outline,
            size: 27,
            color: ColorConstants.violet,
          )),
      SettingTextItem(
          onPress: () => Navigator.of(context).pushNamed(
                '/main_screen/settings',
              ),
          subtitle: 'mamama@fff',
          title: 'Change Email Address',
          icon:
              Icon(Icons.mail_outline, size: 27, color: ColorConstants.violet)),
      SettingTextItem(
          onPress: () => Navigator.of(context).pushNamed(
                '/main_screen/settings',
              ),
          subtitle: 'last change 1 year ago',
          title: 'Change Password',
          icon:
              Icon(Icons.lock_outline, size: 27, color: ColorConstants.violet))
    ];

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'ACCOUNT',
            style: TextStyle(
                color: Colors.grey.shade500,
                letterSpacing: 1.2,
                fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: accountSettings.length,
                itemBuilder: ((context, index) {
                  SettingTextItem settingTextItem = accountSettings[index];
                  return SettingItem(settingTextItem: settingTextItem);
                })),
          ),
        ],
      ),
    );
  }
}
