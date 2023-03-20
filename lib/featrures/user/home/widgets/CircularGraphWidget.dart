import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizz_app/featrures/user/bloc/user_bloc.dart';
import 'package:quizz_app/featrures/user/models/userQuizData.dart';

import '../../../../assets/colors.dart';
import 'CircularGraph.dart';

class CircularGraphWidget extends StatefulWidget {
  const CircularGraphWidget({super.key});

  @override
  State<CircularGraphWidget> createState() => _CircularGraphWidgetState();
}

class _CircularGraphWidgetState extends State<CircularGraphWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          bool isLoading = state.isLoading;
          UserQuizData quizData = state.quizData;

          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            decoration: BoxDecoration(
                color: ColorConstants.lightViolet,
                borderRadius: BorderRadius.circular(20)),
            child: isLoading
                ? Center(
                    child: CircularProgressIndicator(
                      color: Colors.grey.shade200,
                      backgroundColor: ColorConstants.darkViolet,
                    ),
                  )
                : Column(
                    children: [
                      RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                              style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                              children: [
                                const TextSpan(
                                    text: 'You have played a total '),
                                TextSpan(
                                    text:
                                        '${quizData.totalPlayedQuizzes.toString()} quizzes',
                                    style: TextStyle(
                                        color: ColorConstants.violet,
                                        fontWeight: FontWeight.bold)),
                                const TextSpan(text: ' this month!')
                              ])),
                      CircularGraph(
                          playedQuizzes: quizData.totalPlayedQuizzes,
                          totalQuizzes: quizData.totalQuizzes),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              width:
                                  (MediaQuery.of(context).size.width - 110) / 2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white),
                              child: Stack(
                                children: [
                                  const Positioned(
                                      right: 10,
                                      top: 10,
                                      child: Icon(Icons.edit)),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 15),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          quizData.createdQuizzes.toString(),
                                          style: const TextStyle(
                                              fontWeight: FontWeight.w900,
                                              fontSize: 30),
                                        ),
                                        const Text('Quiz Created')
                                      ],
                                    ),
                                  )
                                ],
                              )),
                          Container(
                              width:
                                  (MediaQuery.of(context).size.width - 110) / 2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: ColorConstants.violet),
                              child: Stack(
                                children: [
                                  const Positioned(
                                      right: 10,
                                      top: 10,
                                      child: Icon(
                                        Icons.military_tech,
                                        color: Colors.white,
                                        size: 27,
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 15),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          quizData.quizzesWon.toString(),
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 30),
                                        ),
                                        const Text(
                                          'Quiz Won',
                                          style: TextStyle(color: Colors.white),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )),
                        ],
                      )
                    ],
                  ),
          );
        },
      ),
    );
  }
}
