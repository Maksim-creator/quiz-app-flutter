import 'package:flutter/material.dart';
import 'package:flutter_device_type/flutter_device_type.dart';

class QuestionCountWidget extends StatefulWidget {
  final int questionsLength;
  final int currentIdx;

  const QuestionCountWidget(
      {super.key, required this.currentIdx, required this.questionsLength});

  @override
  State<QuestionCountWidget> createState() => _QuestionState();
}

class _QuestionState extends State<QuestionCountWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        'QUESTION ${widget.currentIdx + 1} OF ${widget.questionsLength}',
        style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w800,
            fontSize: Device.get().isTablet ? 22 : 17),
      ),
    );
  }
}
