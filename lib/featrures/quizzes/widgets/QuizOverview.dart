import 'package:flutter/material.dart';
import 'package:quizz_app/featrures/quizzes/models/quiz.dart';

class QuizOverview extends StatefulWidget {
  final int donePercentage;
  final int score;
  final List<Question> questions;
  final int skipped;
  final int incorrectAnswers;

  const QuizOverview(
      {super.key,
      required this.donePercentage,
      required this.score,
      required this.questions,
      required this.skipped,
      required this.incorrectAnswers});

  @override
  State<QuizOverview> createState() => _QuizOverviewState();
}

class _QuizOverviewState extends State<QuizOverview> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            child: LinearProgressIndicator(
              minHeight: 7,
              value: widget.donePercentage / 100,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'CORRECT ANSWERS',
                          style: TextStyle(
                              color: Colors.grey.shade400,
                              fontWeight: FontWeight.w800,
                              letterSpacing: -0.5,
                              fontSize: 13),
                        ),
                        Text(
                          '${widget.score} questions',
                          style: const TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 18),
                        )
                      ],
                    ),
                    const Divider(
                      height: 20,
                      color: Colors.transparent,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'SKIPPED',
                          style: TextStyle(
                              color: Colors.grey.shade400,
                              fontWeight: FontWeight.w800,
                              letterSpacing: -0.5,
                              fontSize: 13),
                        ),
                        Text(widget.skipped.toString(),
                            style: const TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 18))
                      ],
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'COMPLETION',
                          style: TextStyle(
                              color: Colors.grey.shade400,
                              fontWeight: FontWeight.w800,
                              letterSpacing: -0.5,
                              fontSize: 13),
                        ),
                        Text('${widget.donePercentage}%',
                            style: const TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 18))
                      ],
                    ),
                    const Divider(
                      height: 20,
                      color: Colors.transparent,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'INCORRECT ANSWERS',
                          style: TextStyle(
                              color: Colors.grey.shade400,
                              fontWeight: FontWeight.w800,
                              letterSpacing: -0.5,
                              fontSize: 13),
                        ),
                        Text(widget.incorrectAnswers.toString(),
                            style: const TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 18))
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
