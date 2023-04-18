import 'package:flutter/material.dart';
import 'package:quizz_app/assets/colors.dart';

import '../../../models/textItem.dart';
import '../SettingsWidgets/SettingItem.dart';

class AccountSettings extends StatefulWidget {
  const AccountSettings({super.key});

  @override
  State<AccountSettings> createState() => _AccountSettingsState();
}

class _AccountSettingsState extends State<AccountSettings> {
  @override
  Widget build(BuildContext context) {
    List<TextItem> accountSettings = [
      TextItem(
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
      TextItem(
          onPress: () => Navigator.of(context).pushNamed(
                '/main_screen/settings',
              ),
          subtitle: 'mamama@fff',
          title: 'Change Email Address',
          icon:
              Icon(Icons.mail_outline, size: 27, color: ColorConstants.violet)),
      TextItem(
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
                  TextItem settingTextItem = accountSettings[index];
                  return SettingItem(settingTextItem: settingTextItem);
                })),
          ),
        ],
      ),
    );
  }
}
