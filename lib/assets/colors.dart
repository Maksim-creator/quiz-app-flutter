import 'package:flutter/material.dart';

Color hexToColor(String hex) {
  assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex),
      'hex color must be #rrggbb or #rrggbbaa');

  return Color(
    int.parse(hex.substring(1), radix: 16) +
        (hex.length == 7 ? 0xff000000 : 0x00000000),
  );
}

class ColorConstants {
  static Color violet = hexToColor('#695adf');
  static Color pink = hexToColor('#ff8fa2');
  static Color lightViolet = hexToColor('#ebe7f3');
  static Color grey = hexToColor('#7a7a7a');
  static Color lightGrey = hexToColor('#e6e6e6');
  static Color lightPink = hexToColor('#ffccd5');
  static Color darkPink = hexToColor('#bb727e');
  static Color darkTan = hexToColor('#700e1f');
  static Color darkViolet = hexToColor('#5b4dc3');
  static Color darkGrey = hexToColor('#d7d7d7');
}
