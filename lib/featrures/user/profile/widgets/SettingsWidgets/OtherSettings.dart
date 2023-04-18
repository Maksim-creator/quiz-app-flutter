import 'package:flutter/material.dart';
import 'package:quizz_app/assets/colors.dart';
import 'package:quizz_app/featrures/user/profile/widgets/SettingsWidgets/SettingItem.dart';

import '../../../models/textItem.dart';

class OtherSettings extends StatefulWidget {
  const OtherSettings({super.key});

  @override
  State<OtherSettings> createState() => _OtherSettingsState();
}

class _OtherSettingsState extends State<OtherSettings> {
  @override
  Widget build(BuildContext context) {
    List<TextItem> otherSettings = [
      TextItem(
          onPress: () => Navigator.of(context).pushNamed(
                '/main_screen/settings',
              ),
          subtitle: 'Easy, normal, hard',
          title: 'Change Difficulty',
          icon: Icon(Icons.extension_outlined,
              size: 27, color: ColorConstants.violet)),
      TextItem(
          onPress: () => Navigator.of(context).pushNamed(
                '/main_screen/settings',
              ),
          subtitle: 'Most frequently asked question',
          title: 'FAQ',
          icon:
              Icon(Icons.question_mark, size: 27, color: ColorConstants.violet))
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'OTHER',
            style: TextStyle(
                color: Colors.grey.shade500, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Notification',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
                Switch.adaptive(
                    activeColor: ColorConstants.violet,
                    value: true,
                    onChanged: (val) {}),
              ],
            ),
          ),
          ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: otherSettings.length,
              itemBuilder: (context, index) {
                TextItem settingTextItem = otherSettings[index];

                return SettingItem(settingTextItem: settingTextItem);
              })
        ],
      ),
    );
  }
}
