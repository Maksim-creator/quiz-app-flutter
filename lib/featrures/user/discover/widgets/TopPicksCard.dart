import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:quizz_app/assets/colors.dart';
import 'package:quizz_app/featrures/quizzes/bloc/quizzes_bloc.dart';

import '../../../quizzes/models/quiz.dart';

class TopPicksCard extends StatefulWidget {
  const TopPicksCard({super.key});

  @override
  State<TopPicksCard> createState() => _TopPicksCardState();
}

class _TopPicksCardState extends State<TopPicksCard> {
  String lottieJson = 'lib/assets/lottieAnimations/topPicksCard.json';

  @override
  void initState() {
    super.initState();

    context.read<QuizzesBloc>().add(const QuizzesEvent.getTopSelected());
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<QuizzesBloc>().state;
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: SizedBox(
          height: 160,
          child: OutlinedButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0))),
                  backgroundColor:
                      MaterialStateProperty.all(Colors.pink.shade50)),
              onPressed: () {},
              child: state.when(loading: () {
                return Center(
                  child: CircularProgressIndicator(
                    color: ColorConstants.violet,
                  ),
                );
              }, topSelectedLoaded: ((topSelected) {
                return Stack(children: [
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                            margin: const EdgeInsets.only(top: 10),
                            decoration: BoxDecoration(
                                color: ColorConstants.pink,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(4))),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 7, horizontal: 5),
                              child: Text(
                                'TOP PICKS',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700),
                              ),
                            )),
                        Container(
                          margin: const EdgeInsets.only(bottom: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                topSelected.topic,
                                style: TextStyle(
                                    color: ColorConstants.darkTan,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 5),
                                    child: Icon(
                                      IconData(int.parse(topSelected.icon),
                                          fontFamily: 'MaterialIcons'),
                                      color: ColorConstants.darkTan,
                                      size: 20,
                                    ),
                                  ),
                                  Text(
                                    topSelected.category,
                                    style: TextStyle(
                                        color: ColorConstants.darkTan,
                                        fontSize: 12),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 3),
                                    child: Icon(
                                      Icons.fiber_manual_record,
                                      color: ColorConstants.darkTan,
                                      size: 6,
                                    ),
                                  ),
                                  Text(
                                    '${topSelected.quizzesCount} quizzes',
                                    style: TextStyle(
                                        color: ColorConstants.darkTan,
                                        fontSize: 12),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ]),
                  Padding(
                    padding: const EdgeInsets.only(left: 100),
                    child: Lottie.asset(lottieJson,
                        height: 160,
                        width: 300,
                        alignment: Alignment.bottomRight),
                  )
                ]);
              }), error: () {
                return const Center(
                  child: Text(
                    'Error while loading info',
                    style: TextStyle(color: Colors.white),
                  ),
                );
              }, topicsLoaded: (List<Topic> topics) {
                return Text('data');
              })),
        ));
  }
}
