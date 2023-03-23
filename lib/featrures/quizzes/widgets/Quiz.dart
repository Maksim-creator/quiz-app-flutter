import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_device_type/flutter_device_type.dart';
import 'package:quizz_app/featrures/quizzes/screens/ReviewQuiz.dart';
import 'package:quizz_app/featrures/repositories/user_repo.dart';
import 'package:quizz_app/featrures/user/models/RecentQuiz/recentQuiz.dart';
import '../../../assets/colors.dart';
import '../models/quiz.dart';
import '../utils/utils.dart';
import 'QuizHeader.dart';

class QuizWidget extends StatefulWidget {
  final List<Question>? questions;
  final String topic;
  final String category;
  final String icon;
  final String quizId;

  const QuizWidget(
      {super.key,
      required this.icon,
      required this.questions,
      required this.topic,
      required this.category,
      required this.quizId});

  @override
  State<QuizWidget> createState() => _QuizWidgetState();
}

class _QuizWidgetState extends State<QuizWidget> {
  int _currentQuestinIdx = 0;
  int _points = 0;
  int _lives = 3;
  late Timer _timer;
  int _seconds = 10;
  String? selectedAnswer;
  bool? isAnswerRight;
  int score = 0;
  int skipped = 0;
  int _incorrectAnswers = 0;

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_seconds == 0) {
          setState(() {
            timer.cancel();
            skipped = skipped + 1;
          });
          if (_lives != 1) {
            setState(() {
              _lives = _lives - 1;
            });
          } else {
            finishQuiz();
            return;
          }
          if (_currentQuestinIdx != widget.questions!.length - 1) {
            setState(() {
              _currentQuestinIdx = _currentQuestinIdx + 1;
            });
            restartTimer();
          } else {
            finishQuiz();
          }
        } else {
          setState(() {
            _seconds--;
          });
        }
      },
    );
  }

  void finishQuiz() {
    UserRepo().updateUserPoints(_points).then((value) {}).then((value) {
      UserRepo()
          .postCompletedQuiz(
              completedQuiz: CompletedQuiz(
                  category: widget.category,
                  donePercentage:
                      ((score / widget.questions!.length) * 100).floor(),
                  questionsTotal: widget.questions!.length,
                  questionsAnswered: score))
          .then((value) {
        UserRepo()
            .postRecentQuiz(RecentQuiz(
                id: widget.quizId,
                topic: widget.topic,
                icon: widget.icon,
                donePercentage:
                    ((score / widget.questions!.length) * 100).floor()))
            .then((value) {
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (BuildContext context) => ReviewQuiz(
                    questions: widget.questions!,
                    score: score,
                    skipped: skipped,
                    incorrectAnswers: _incorrectAnswers,
                    topic: widget.topic),
              ),
              (route) => false);
        });
      });
    });
  }

  void restartTimer() {
    setState(() {
      _timer.cancel();
      _seconds = 10;
    });
    startTimer();
  }

  void handleAnswerSelect(
      String key, String value, String correctAnswerKey) async {
    setState(() {
      selectedAnswer = key;
      isAnswerRight = key == correctAnswerKey;
    });
    await Future.delayed(const Duration(milliseconds: 500));
    if (key == correctAnswerKey) {
      _points = _points + 5;
      score = score + 1;
    } else {
      _incorrectAnswers = _incorrectAnswers + 1;
      if (_lives == 1) {
        finishQuiz();
        return;
      } else {
        setState(() {
          _lives = _lives - 1;
        });
      }
    }
    if (_currentQuestinIdx == widget.questions!.length - 1) {
      finishQuiz();
      return;
    }
    resetAnswers();
    restartTimer();
    setState(() {
      _currentQuestinIdx = _currentQuestinIdx + 1;
    });
  }

  Color renderButtonBg() {
    if (selectedAnswer != null) {
      if (isAnswerRight == true) {
        return Colors.green.shade300;
      } else {
        return Colors.red.shade300;
      }
    } else {
      return Colors.white;
    }
  }

  void resetAnswers() {
    setState(() {
      selectedAnswer = null;
      isAnswerRight = null;
    });
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Question? question = widget.questions?.length != null
        ? widget.questions![_currentQuestinIdx]
        : null;
    List<dynamic> transformedAnswers = transformAnswers(question?.answers);
    MapEntry<String, dynamic>? correctAnswer = question?.correctAnswers
        .toJson()
        .entries
        .firstWhere((element) => element.value);
    double progress = _currentQuestinIdx / widget.questions!.length;

    return SafeArea(
        child: Column(
      children: [
        QuizHeader(points: _points, lives: _lives, progress: progress),
        Expanded(
          child: Container(
            margin: EdgeInsets.symmetric(
                horizontal: Device.get().isTablet ? 30 : 10,
                vertical: Device.get().isTablet ? 40 : 20),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                _seconds == 0
                    ? Container(
                        margin: const EdgeInsets.symmetric(vertical: 20),
                        child: Center(
                          child: Text(
                            "Time's up!",
                            style: TextStyle(
                                color: ColorConstants.pink,
                                fontWeight: FontWeight.w700,
                                fontSize: 19),
                          ),
                        ),
                      )
                    : Container(
                        margin: const EdgeInsets.symmetric(vertical: 20),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border:
                              Border.all(color: ColorConstants.pink, width: 3),
                        ),
                        child: Center(
                            child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Text(
                                  _seconds.toString(),
                                  style: TextStyle(
                                      color: ColorConstants.pink,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 19),
                                ))),
                      ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'QUESTION ${_currentQuestinIdx + 1} OF ${widget.questions!.length}',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w800,
                            fontSize: Device.get().isTablet ? 22 : 17),
                      ),
                    ),
                    widget.questions != null && question != null
                        ? Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 20),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        question.question,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w800,
                                            fontSize: Device.get().isTablet
                                                ? 22
                                                : 17),
                                      ),
                                    ),
                                  ),
                                  ListView.builder(
                                      shrinkWrap: true,
                                      itemCount: transformedAnswers.length,
                                      itemBuilder: ((context, index) {
                                        return OutlinedButton(
                                            style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      transformedAnswers[
                                                                      index]![
                                                                  'key'] ==
                                                              selectedAnswer
                                                          ? renderButtonBg()
                                                          : Colors.white),
                                              padding:
                                                  MaterialStateProperty.all(
                                                      const EdgeInsets
                                                              .symmetric(
                                                          vertical: 10)),
                                              shape: MaterialStateProperty.all(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30.0))),
                                            ),
                                            onPressed: () {
                                              handleAnswerSelect(
                                                transformedAnswers[index]![
                                                    'key'],
                                                transformedAnswers[index]![
                                                    'value'],
                                                correctAnswer!.key,
                                              );
                                            },
                                            child: Text(
                                              transformedAnswers[index]![
                                                      'value']
                                                  .toString(),
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize:
                                                      Device.get().isTablet
                                                          ? 17
                                                          : 14),
                                            ));
                                      }))
                                ]),
                          )
                        : const Center(
                            child: Text(
                              'Can not get current question',
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                          ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    ));
  }
}
