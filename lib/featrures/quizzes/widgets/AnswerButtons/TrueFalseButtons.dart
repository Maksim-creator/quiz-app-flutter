import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class TrueFalseButtons extends StatefulWidget {
  final List<dynamic> answers;
  final Function(String key, String value, String correctAnswerKey)
      handleAnswerSelect;
  final String correctAnswerKey;

  const TrueFalseButtons(
      {super.key,
      required this.answers,
      required this.handleAnswerSelect,
      required this.correctAnswerKey});

  @override
  State<TrueFalseButtons> createState() => _TrueFalseButtonsState();
}

class _TrueFalseButtonsState extends State<TrueFalseButtons> {
  String assetName = 'lib/assets/lottieAnimations/truefalseAnimation.json';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Lottie.asset(assetName),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: OutlinedButton(
                onPressed: () {
                  widget.handleAnswerSelect(widget.answers[0]['key'],
                      widget.answers[0]['value'], widget.correctAnswerKey);
                },
                style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14.0)),
                    backgroundColor: Colors.green.shade600,
                    padding: const EdgeInsets.symmetric(vertical: 15)),
                child: Text(
                  widget.answers[0]['value'],
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
                child: OutlinedButton(
              onPressed: () {
                widget.handleAnswerSelect(widget.answers[1]['key'],
                    widget.answers[1]['value'], widget.correctAnswerKey);
              },
              style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  backgroundColor: Colors.red.shade500,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14.0))),
              child: Text(
                widget.answers[1]['value'],
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ))
          ],
        ),
      ],
    ));
  }
}
