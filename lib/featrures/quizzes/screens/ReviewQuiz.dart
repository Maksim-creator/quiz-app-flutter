import 'package:flutter/material.dart';
import 'package:quizz_app/featrures/quizzes/models/quiz.dart';

import '../../../assets/colors.dart';

class ReviewQuiz extends StatefulWidget {
  final List<Question> questions;
  final int score;

  const ReviewQuiz({super.key, required this.questions, required this.score});

  @override
  State<ReviewQuiz> createState() => _ReviewQuizState();
}

class _ReviewQuizState extends State<ReviewQuiz> {
  @override
  Widget build(BuildContext context) {
    print(widget.questions);
    print(widget.score);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Great',
          style: TextStyle(fontWeight: FontWeight.w800, fontSize: 24),
        ),
        backgroundColor: ColorConstants.violet,
        elevation: 0,
      ),
      body: SafeArea(child: Text('data')),
    );
  }
}
