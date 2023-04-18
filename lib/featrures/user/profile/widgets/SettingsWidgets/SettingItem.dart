import 'package:flutter/material.dart';

import '../../../../../assets/colors.dart';
import '../../../models/textItem.dart';

class SettingItem extends StatefulWidget {
  final TextItem settingTextItem;

  const SettingItem({super.key, required this.settingTextItem});

  @override
  State<SettingItem> createState() => _SettingItemState();
}

class _SettingItemState extends State<SettingItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 7),
      child: TextButton(
          style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
              foregroundColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              side: const BorderSide(width: 0, color: Colors.transparent),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap),
          onPressed: widget.settingTextItem.onPress,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            decoration: BoxDecoration(
                color: ColorConstants.lightViolet,
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100)),
                      child: widget.settingTextItem.icon,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.settingTextItem.title,
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4),
                            child: Text(
                              widget.settingTextItem.subtitle,
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey.shade500,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const Icon(
                  Icons.chevron_right,
                  color: Colors.black,
                )
              ],
            ),
          )),
    );
  }
}
