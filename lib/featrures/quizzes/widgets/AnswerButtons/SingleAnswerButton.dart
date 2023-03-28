import 'package:flutter/material.dart';
import 'package:flutter_device_type/flutter_device_type.dart';

class SingleAnswerButton extends StatefulWidget {
  final dynamic answer;
  final String? selectedAnswer;
  final String correctAnswerKey;
  final Color Function() renderButtonBg;
  final Function(String answerKey, String answerValue, String correctAnswerKey)
      handleAnswerSelect;

  const SingleAnswerButton(
      {super.key,
      required this.answer,
      this.selectedAnswer,
      required this.renderButtonBg,
      required this.handleAnswerSelect,
      required this.correctAnswerKey});

  @override
  State<SingleAnswerButton> createState() => _SingleAnswerButtonState();
}

class _SingleAnswerButtonState extends State<SingleAnswerButton> {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            padding: const EdgeInsets.symmetric(vertical: 10),
            backgroundColor: widget.answer!['key'] == widget.selectedAnswer
                ? widget.renderButtonBg()
                : Colors.white),
        onPressed: () {
          widget.handleAnswerSelect(
            widget.answer!['key'],
            widget.answer!['value'],
            widget.correctAnswerKey,
          );
        },
        child: Text(
          widget.answer!['value'].toString(),
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: Device.get().isTablet ? 17 : 14),
        ));
  }
}
