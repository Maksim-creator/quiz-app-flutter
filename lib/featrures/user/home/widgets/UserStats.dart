import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizz_app/featrures/user/bloc/user_bloc.dart';
import 'package:quizz_app/featrures/user/home/widgets/BarGraphWidget.dart';
import 'package:quizz_app/featrures/user/home/widgets/CircularGraphWidget.dart';

class UserStats extends StatefulWidget {
  const UserStats({super.key});

  @override
  State<UserStats> createState() => _UserStatsState();
}

class _UserStatsState extends State<UserStats> {
  @override
  void initState() {
    context.read<UserBloc>().add(const UserEvent.getUserQuizDetails());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(builder: (context, state) {
      return SingleChildScrollView(
          child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: const Column(
          children: [CircularGraphWidget(), BarGraphWidget()],
        ),
      ));
    });
  }
}
