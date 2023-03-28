import 'package:flutter/material.dart';
import 'package:flutter_device_type/flutter_device_type.dart';

class SingleAnswerButton extends StatefulWidget {
  final dynamic answer;
  final String? selectedAnswer;
  final String correctAnswerKey;
  final bool? isAnswerRight;
  final Function(String answerKey, String answerValue, String correctAnswerKey)
      handleAnswerSelect;

  const SingleAnswerButton(
      {super.key,
      required this.answer,
      this.selectedAnswer,
      required this.isAnswerRight,
      required this.handleAnswerSelect,
      required this.correctAnswerKey});

  @override
  State<SingleAnswerButton> createState() => _SingleAnswerButtonState();
}

class _SingleAnswerButtonState extends State<SingleAnswerButton> {
  Color renderButtonBg() {
    if (widget.selectedAnswer != null) {
      if (widget.isAnswerRight == true) {
        return Colors.green.shade300;
      } else {
        return Colors.red.shade300;
      }
    } else {
      return Colors.white;
    }
  }

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            padding: const EdgeInsets.symmetric(vertical: 10),
            backgroundColor: widget.answer!['key'] == widget.selectedAnswer
                ? renderButtonBg()
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
