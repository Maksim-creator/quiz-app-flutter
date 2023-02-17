import 'package:flutter/material.dart';
import 'package:quizz_app/assets/colors.dart';

class TextInput extends StatefulWidget {
  final String hintText;
  final String label;
  final IconData prefixIcon;
  final TextEditingController controller;
  final bool? isPassword;
  final String? Function(String?)? validate;
  final Color? iconColor;
  final Color? inputBackground;
  final Color? hintTextColor;
  final double? verticalInputPadding;

  const TextInput(
      {super.key,
      required this.hintText,
      required this.label,
      required this.prefixIcon,
      required this.controller,
      this.inputBackground,
      this.iconColor,
      this.validate,
      this.hintTextColor,
      this.verticalInputPadding,
      this.isPassword});

  @override
  State<TextInput> createState() => TextInputState();
}

class TextInputState extends State<TextInput> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: 0, vertical: widget.verticalInputPadding ?? 5),
          child: Text(
            widget.label,
            style: const TextStyle(fontWeight: FontWeight.w700),
          ),
        ),
        Flexible(
            child: TextFormField(
          validator: widget.validate,
          controller: widget.controller,
          obscureText: widget.isPassword ?? false,
          cursorColor: ColorConstants.violet,
          decoration: InputDecoration(
              prefixIcon: Icon(
                widget.prefixIcon,
                color: widget.iconColor ?? ColorConstants.violet,
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none),
              hintStyle: TextStyle(
                  fontSize: 13, color: widget.hintTextColor ?? Colors.grey),
              hintText: widget.hintText,
              filled: true,
              contentPadding: const EdgeInsets.all(10),
              fillColor: widget.inputBackground ?? Colors.white),
          style: const TextStyle(fontSize: 14),
        ))
      ],
    );
  }
}
