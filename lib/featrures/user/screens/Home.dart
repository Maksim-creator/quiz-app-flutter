import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_device_type/flutter_device_type.dart';
import 'package:quizz_app/featrures/quizzes/cubit/quizzes_cubit.dart';
import 'package:quizz_app/featrures/user/home/widgets/FindFriendsCard.dart';
import 'package:quizz_app/featrures/user/home/widgets/Header.dart';
import 'package:quizz_app/featrures/user/home/widgets/LiveQuizzesList.dart';
import 'package:quizz_app/featrures/user/home/widgets/RecentQuiz.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuizzesCubit, QuizzesState>(
      builder: (context, state) {
        return Padding(
            padding: EdgeInsets.only(top: Device.get().isAndroid ? 20 : 40),
            child: SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 15),
                    child: Column(
                      children: const [
                        HomeHeader(),
                        RecentQuiz(),
                        FindFriendsCard(),
                      ],
                    ),
                  ),
                  const LiveQuizzesList(),
                ],
              ),
            ));
      },
    );
  }
}
