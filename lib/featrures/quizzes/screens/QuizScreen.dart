import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizz_app/featrures/quizzes/bloc/quizzes_bloc.dart';
import 'package:quizz_app/featrures/quizzes/models/quiz.dart';
import 'package:quizz_app/featrures/quizzes/widgets/Quiz.dart';
import 'package:quizz_app/featrures/repositories/quizzes_repo.dart';

class QuizScreen extends StatefulWidget {
  final String topic;
  final int count;

  const QuizScreen({super.key, required this.topic, required this.count});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> with TickerProviderStateMixin {
  bool isTimerShown = true;
  List<Question>? questions;
  late Timer _timer;
  int _seconds = 3;

  late final AnimationController _controller = AnimationController(
      duration: const Duration(milliseconds: 500), vsync: this)
    ..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeOut,
  );

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_seconds == 0) {
          setState(() {
            timer.cancel();
            _controller.stop();
            isTimerShown = false;
          });
        } else {
          setState(() {
            _seconds--;
          });
        }
      },
    );
  }

  void getQuestions(String topic, int count) {
    context
        .read<QuizzesBloc>()
        .add(QuizzesEvent.getQuestionsList(topic: topic, count: count));
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
    getQuestions(widget.topic, widget.count);

    return BlocBuilder<QuizzesBloc, QuizzesState>(
      builder: (context, state) {
        return Scaffold(
            body: isTimerShown || state.isLoading
                ? ScaleTransition(
                    scale: _animation,
                    child: Center(
                      child: Text(
                        _seconds == 0 ? 'Start!' : _seconds.toString(),
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  )
                : QuizWidget(
                    topic: widget.topic,
                    questions: state.questions,
                  ));
      },
    );
  }
}
