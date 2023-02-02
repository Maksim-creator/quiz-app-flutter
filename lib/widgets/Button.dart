import 'package:flutter/material.dart';
import 'package:quizz_app/assets/colors.dart';

class Button extends StatelessWidget {
  String buttonText;
  Color? backgroundColor;
  dynamic onPress;
  bool disabled;

  Button(
      {super.key,
      required this.buttonText,
      this.backgroundColor,
      required this.onPress,
      required this.disabled});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: disabled ? null : onPress,
      style: ElevatedButton.styleFrom(
        backgroundColor: (backgroundColor ?? ColorConstants.violet),
        padding: const EdgeInsets.all(15),
        shape: const StadiumBorder(),
        minimumSize: const Size.fromHeight(40),
      ),
      child: Text(buttonText),
    );
  }
}
