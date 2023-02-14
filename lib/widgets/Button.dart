import 'package:flutter/material.dart';
import 'package:quizz_app/assets/colors.dart';

class Button extends StatelessWidget {
  String buttonText;
  Color? backgroundColor;
  dynamic onPress;
  bool disabled;
  TextStyle? textStyle;
  double? marginVertical;
  double? marginHorizontal;
  Size? maximumSize;
  Widget? leftIcon;

  Button(
      {super.key,
      this.textStyle,
      required this.buttonText,
      this.backgroundColor,
      this.marginHorizontal,
      this.marginVertical,
      required this.onPress,
      this.maximumSize,
      this.leftIcon,
      required this.disabled});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(
            horizontal: marginHorizontal ?? 0, vertical: marginVertical ?? 0),
        child: leftIcon != null
            ? ElevatedButton.icon(
                icon: leftIcon!,
                onPressed: disabled ? null : onPress,
                style: ElevatedButton.styleFrom(
                  backgroundColor: (backgroundColor ?? ColorConstants.violet),
                  padding: const EdgeInsets.all(15),
                  shape: const StadiumBorder(),
                  minimumSize: maximumSize ?? const Size.fromHeight(40),
                ),
                label: Text(
                  buttonText,
                  style: textStyle,
                ),
              )
            : ElevatedButton(
                onPressed: disabled ? null : onPress,
                style: ElevatedButton.styleFrom(
                  backgroundColor: (backgroundColor ?? ColorConstants.violet),
                  padding: const EdgeInsets.all(15),
                  shape: const StadiumBorder(),
                  minimumSize: maximumSize ?? const Size.fromHeight(40),
                ),
                child: Text(
                  buttonText,
                  style: textStyle,
                ),
              ));
  }
}
