import 'package:flutter/material.dart';
import 'package:quizz_app/assets/colors.dart';

class MultipleAnswersButton extends StatefulWidget {
  final dynamic answer;
  final List<MapEntry<String, dynamic>> selectedAnswers;
  final Color Function() renderButtonBg;
  final bool isConfirmed;
  final List<String> correctAnswers;

  const MultipleAnswersButton(
      {super.key,
      required this.answer,
      required this.selectedAnswers,
      required this.renderButtonBg,
      required this.correctAnswers,
      required this.isConfirmed});

  @override
  State<MultipleAnswersButton> createState() => _MultipleAnswersButtonState();
}

class _MultipleAnswersButtonState extends State<MultipleAnswersButton> {
  bool isChecked = false;

  void handleMultipleAnswerChange(key, value) {
    MapEntry<String, dynamic> answer = MapEntry(key, value);
    if (isChecked) {
      widget.selectedAnswers.add(answer);
    } else {
      widget.selectedAnswers.removeWhere((element) => element.key == key);
    }
  }

  Color renderBackground(bool isConfirmed, List<String> selectedAnswers,
      List<String> correctAnswers, dynamic answer) {
    if (!isConfirmed) {
      return Colors.white;
    } else {
      bool containsCorrect = correctAnswers.contains(answer['key']);

      if (containsCorrect) {
        return Colors.green.shade300;
      } else {
        return Colors.white;
      }
    }
  }

  void handleButtonPress(String key, dynamic value) {
    setState(() {
      isChecked = !isChecked;
    });
    handleMultipleAnswerChange(key, value);
  }

  @override
  Widget build(BuildContext context) {
    final List<String> selectedAnswers =
        widget.selectedAnswers.map((e) => e.key).toList();

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            backgroundColor: renderBackground(widget.isConfirmed,
                selectedAnswers, widget.correctAnswers, widget.answer),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            padding: const EdgeInsets.only(left: 15, right: 10),
          ),
          onPressed: () =>
              handleButtonPress(widget.answer['key'], widget.answer['value']),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.answer['value'],
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Checkbox(
                activeColor: ColorConstants.violet,
                checkColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value!;
                  });
                  handleMultipleAnswerChange(
                      widget.answer['key'], widget.answer['value']);
                },
              )
            ],
          )),
    );
  }
}
