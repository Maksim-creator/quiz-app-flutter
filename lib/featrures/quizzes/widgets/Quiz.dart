import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_device_type/flutter_device_type.dart';
import 'package:quizz_app/featrures/quizzes/screens/ReviewQuiz.dart';
import 'package:quizz_app/featrures/quizzes/widgets/AnswerButtons/MultipleAnswerButton.dart';
import 'package:quizz_app/featrures/quizzes/widgets/AnswerButtons/SingleAnswerButton.dart';
import 'package:quizz_app/featrures/quizzes/widgets/QuizScreenWidgets/QuestionCount.dart';
import 'package:quizz_app/featrures/quizzes/widgets/QuizScreenWidgets/QuestionName.dart';
import 'package:quizz_app/featrures/repositories/user_repo.dart';
import 'package:quizz_app/featrures/user/models/RecentQuiz/recentQuiz.dart';
import 'package:quizz_app/widgets/Button.dart';
import '../models/quiz.dart';
import '../utils/utils.dart';
import 'AnswerButtons/TrueFalseButtons.dart';
import 'QuizHeader.dart';
import './QuizScreenWidgets/Timer.dart' as timer_widget;
import '../utils/constants.dart' as QuestionTypes;

class MultipleAnswers {
  final double correctAnswersInPerc;
  final int answeredCorrect;

  MultipleAnswers(
      {required this.answeredCorrect, required this.correctAnswersInPerc});
}

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
  List<MapEntry<String, dynamic>> selectedAnswers = [];
  bool isConfirmed = false;

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
          handleIncorrectAnswer();
          handleNextIndexChange();
        } else {
          setState(() {
            _seconds--;
          });
        }
      },
    );
  }

  void finishQuiz() async {
    await UserRepo().updateUserPoints(_points);
    await UserRepo().postCompletedQuiz(
        completedQuiz: CompletedQuiz(
            category: widget.category,
            donePercentage: ((score / widget.questions!.length) * 100).floor(),
            questionsTotal: widget.questions!.length,
            questionsAnswered: score));
    await UserRepo().postRecentQuiz(RecentQuiz(
        id: widget.quizId,
        topic: widget.topic,
        icon: widget.icon,
        donePercentage: ((score / widget.questions!.length) * 100).floor()));

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
    _timer.cancel();
    setState(() {
      selectedAnswer = key;
      isAnswerRight = key == correctAnswerKey;
    });
    await Future.delayed(const Duration(milliseconds: 500));
    if (key == correctAnswerKey) {
      _points = _points + 5;
      score = score + 1;
    } else {
      handleIncorrectAnswer();
    }
    handleNextIndexChange();
  }

  void confirmMultipleAnswer(
      List<MapEntry<String, dynamic>> correctAnswers) async {
    setState(() {
      isConfirmed = true;
    });
    await Future.delayed(const Duration(milliseconds: 1000));
    List<String> correctKeys = correctAnswers.map((e) => e.key).toList();
    List<String> answeredKeys = selectedAnswers.map((e) => e.key).toList();

    correctKeys.sort((a, b) => a.toString().compareTo(b.toString()));
    answeredKeys.sort((a, b) => a.toString().compareTo(b.toString()));
    MultipleAnswers transformedAnswers =
        transformMultipleAnswers(correctKeys, answeredKeys);

    setState(() {
      _points = _points + (transformedAnswers.answeredCorrect * 5);
    });

    if (transformedAnswers.correctAnswersInPerc >= 50) {
      setState(() {
        score = score + 1;
      });
    } else {
      handleIncorrectAnswer();
    }

    handleNextIndexChange();
  }

  void handleIncorrectAnswer() {
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

  void handleNextIndexChange() {
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

  void resetAnswers() {
    setState(() {
      selectedAnswers = [];
      selectedAnswer = null;
      isAnswerRight = null;
      isConfirmed = false;
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

    List<MapEntry<String, dynamic>>? correctAnswers = question?.correctAnswers
        .toJson()
        .entries
        .where((element) => element.value != null && element.value)
        .toList();

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
                timer_widget.Timer(seconds: _seconds),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    QuestionCountWidget(
                        currentIdx: _currentQuestinIdx,
                        questionsLength: widget.questions!.length),
                    widget.questions != null && question != null
                        ? Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  QuestionName(question: question.question),
                                  if (question.type == QuestionTypes.TRUEFALSE)
                                    TrueFalseButtons(
                                        answers: transformedAnswers,
                                        handleAnswerSelect: handleAnswerSelect,
                                        correctAnswerKey:
                                            correctAnswers![0].key),
                                  if (question.type != QuestionTypes.TRUEFALSE)
                                    ListView.builder(
                                        shrinkWrap: true,
                                        itemCount: transformedAnswers.length,
                                        itemBuilder: ((context, index) {
                                          switch (question.type) {
                                            case QuestionTypes.COMMON:
                                              return SingleAnswerButton(
                                                  answer:
                                                      transformedAnswers[index],
                                                  handleAnswerSelect:
                                                      handleAnswerSelect,
                                                  isAnswerRight: isAnswerRight,
                                                  selectedAnswer:
                                                      selectedAnswer,
                                                  correctAnswerKey:
                                                      correctAnswers![0].key);
                                            case QuestionTypes.MULTIPLE:
                                              return MultipleAnswersButton(
                                                  answer:
                                                      transformedAnswers[index],
                                                  selectedAnswers:
                                                      selectedAnswers,
                                                  correctAnswers:
                                                      correctAnswers!
                                                          .map((e) => e.key)
                                                          .toList(),
                                                  isConfirmed: isConfirmed);
                                          }
                                          return null;
                                        })),
                                  if (question.type == QuestionTypes.MULTIPLE)
                                    Padding(
                                      padding: const EdgeInsets.only(top: 15),
                                      child: Button(
                                          buttonText: 'Confirm',
                                          onPress: () {
                                            confirmMultipleAnswer(
                                                correctAnswers!);
                                          },
                                          disabled: selectedAnswers.isEmpty),
                                    )
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
