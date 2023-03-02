import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:quizz_app/featrures/quizzes/models/quiz.dart';
import 'package:quizz_app/featrures/quizzes/widgets/CupCardWidget.dart';
import 'package:quizz_app/featrures/user/screens/BottomTabsNavigation.dart';

import '../../../assets/colors.dart';
import '../constants.dart';
import '../widgets/QuizOverview.dart';

class ReviewQuiz extends StatefulWidget {
  final List<Question> questions;
  final int score;
  final int skipped;
  final int incorrectAnswers;
  final String topic;

  const ReviewQuiz(
      {super.key,
      required this.questions,
      required this.score,
      required this.skipped,
      required this.incorrectAnswers,
      required this.topic});

  @override
  State<ReviewQuiz> createState() => _ReviewQuizState();
}

class _ReviewQuizState extends State<ReviewQuiz> {
  void shareResults() async {
    await FlutterShare.share(
        title: 'Quiz game',
        text:
            "Hey! I did my best and got ${widget.score * 5} points in ${widget.topic} quiz. Let's study and have with me!",
        linkUrl: 'https://google.com/',
        chooserTitle: 'Example Chooser Title');
  }

  @override
  Widget build(BuildContext context) {
    int donePercentage =
        ((widget.score / widget.questions.length) * 100).floor();

    dynamic params = results.firstWhere(
        (e) => donePercentage >= e['min'] && donePercentage <= e['max']);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          params['message'],
          style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 24),
        ),
        backgroundColor: ColorConstants.violet,
        elevation: 0,
      ),
      body: SafeArea(
          child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                CupCardWidget(
                    donePercentage: donePercentage,
                    score: widget.score,
                    shadowColor: params['colors']['shadow'],
                    mainColor: params['colors']['main'],
                    questions: widget.questions),
                QuizOverview(
                    donePercentage: donePercentage,
                    score: widget.score,
                    questions: widget.questions,
                    skipped: widget.skipped,
                    incorrectAnswers: widget.incorrectAnswers),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14.0)),
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          backgroundColor: Colors.white),
                      onPressed: () {
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const BottomTabs(),
                            ),
                            (route) => false);
                      },
                      child: const Text(
                        'Finish',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w800),
                      )),
                )),
                OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14.0)),
                        padding: const EdgeInsets.symmetric(vertical: 11.5),
                        backgroundColor: Colors.white),
                    onPressed: shareResults,
                    child: Icon(
                      Icons.share,
                      color: ColorConstants.violet,
                    ))
              ],
            )
          ],
        ),
      )),
    );
  }
}
