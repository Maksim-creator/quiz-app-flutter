import 'package:flutter/cupertino.dart';

class TextItem {
  final String title;
  final String subtitle;
  final Icon icon;
  final Future<Object?> Function() onPress;

  TextItem(
      {required this.subtitle,
      required this.title,
      required this.icon,
      required this.onPress});
}
