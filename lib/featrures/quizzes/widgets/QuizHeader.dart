import 'package:flutter/material.dart';
import 'package:quizz_app/assets/colors.dart';

class QuizHeader extends StatefulWidget {
  final int points;
  final int lives;
  final double progress;

  const QuizHeader(
      {super.key,
      required this.points,
      required this.lives,
      required this.progress});

  @override
  State<QuizHeader> createState() => _QuizHeaderState();
}

class _QuizHeaderState extends State<QuizHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: BoxDecoration(
                color: ColorConstants.lightViolet.withOpacity(0.3),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                const Icon(
                  Icons.favorite,
                  color: Colors.white,
                  size: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(
                    widget.lives.toString(),
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Flexible(
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: LinearProgressIndicator(
                    color: Colors.white,
                    backgroundColor:
                        ColorConstants.lightViolet.withOpacity(0.5),
                    value: widget.progress,
                  ))),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: BoxDecoration(
                color: ColorConstants.lightViolet.withOpacity(0.3),
                borderRadius: BorderRadius.circular(10)),
            child: Row(children: [
              const Icon(
                Icons.extension,
                color: Colors.white,
                size: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(
                  widget.points.toString(),
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
