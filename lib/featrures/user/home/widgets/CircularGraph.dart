import 'package:flutter/material.dart';

import '../../../../assets/colors.dart';

class CircularGraph extends StatefulWidget {
  final int playedQuizzes;
  final int totalQuizzes;

  const CircularGraph(
      {super.key, required this.playedQuizzes, required this.totalQuizzes});

  @override
  State<CircularGraph> createState() => _CircularGraphState();
}

class _CircularGraphState extends State<CircularGraph> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Stack(children: [
      Center(
        child: Transform.scale(
          scale: 3,
          child: CircularProgressIndicator(
            color: ColorConstants.violet,
            backgroundColor: Colors.white,
            value: widget.playedQuizzes / widget.totalQuizzes,
            strokeWidth: 3,
          ),
        ),
      ),
      Center(
        child: RichText(
            text: TextSpan(
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
                children: [
              TextSpan(
                  text: widget.playedQuizzes.toString(),
                  style: const TextStyle(fontSize: 27)),
              TextSpan(
                  text: '/${widget.totalQuizzes.toString()}',
                  style:
                      TextStyle(color: Colors.grey.shade700.withOpacity(0.6)))
            ])),
      )
    ]));
  }
}
