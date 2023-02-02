import 'package:flutter/material.dart';
import 'package:quizz_app/assets/colors.dart';

class TextInput extends StatefulWidget {
  final String hintText;
  final String label;
  final IconData prefixIcon;
  final TextEditingController controller;
  final bool? isPassword;

  const TextInput(
      {super.key,
      required this.hintText,
      required this.label,
      required this.prefixIcon,
      required this.controller,
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
  void dispose() {
    widget.controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
          child: Text(
            widget.label,
            style: const TextStyle(fontWeight: FontWeight.w700),
          ),
        ),
        Flexible(
            child: TextField(
          controller: widget.controller,
          obscureText: widget.isPassword ?? false,
          cursorColor: ColorConstants.violet,
          decoration: InputDecoration(
              prefixIcon: Icon(
                widget.prefixIcon,
                color: ColorConstants.violet,
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none),
              hintStyle: const TextStyle(fontSize: 13),
              hintText: widget.hintText,
              filled: true,
              contentPadding: const EdgeInsets.all(10),
              fillColor: Colors.white),
          style: const TextStyle(fontSize: 14),
        ))
      ],
    );
  }
}
