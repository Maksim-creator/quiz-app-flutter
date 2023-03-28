import 'package:flutter/material.dart';
import 'package:flutter_device_type/flutter_device_type.dart';

class QuestionName extends StatefulWidget {
  final String question;

  const QuestionName({super.key, required this.question});

  @override
  State<QuestionName> createState() => _QuestionNameState();
}

class _QuestionNameState extends State<QuestionName> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          widget.question,
          style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: Device.get().isTablet ? 22 : 17),
        ),
      ),
    );
  }
}
