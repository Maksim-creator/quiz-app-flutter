import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quizz_app/featrures/quizzes/models/quiz.dart';
import 'package:quizz_app/featrures/quizzes/widgets/AuthorWidget.dart';
import 'package:quizz_app/featrures/quizzes/widgets/CountSelectionWidget.dart';
import 'package:quizz_app/featrures/quizzes/widgets/PointsCard.dart';
import 'package:quizz_app/widgets/Button.dart';

import '../../../assets/colors.dart';

class CountSelection extends StatefulWidget {
  final Topic topic;
  const CountSelection({super.key, required this.topic});

  @override
  State<CountSelection> createState() => _CountSelectionState();
}

class _CountSelectionState extends State<CountSelection> {
  int countQuestions = 5;
  final String assetName = 'lib/assets/svg/circle.svg';
  incrementCount() {
    setState(() {
      countQuestions = countQuestions + 5;
    });
  }

  decrementCount() {
    setState(() {
      countQuestions = countQuestions - 5;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Topic args = ModalRoute.of(context)!.settings.arguments as Topic;
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
          backgroundColor: ColorConstants.violet,
          elevation: 0,
        ),
        body: Stack(children: [
          Positioned(
            left: -75,
            child: SvgPicture.asset(assetName),
          ),
          Positioned(
            right: -75,
            top: 10,
            child: Transform.scale(
              scale: 0.75,
              child: SvgPicture.asset(assetName),
            ),
          ),
          Positioned(
            right: -50,
            bottom: -50,
            child: Transform.scale(
              scale: 2,
              child: SvgPicture.asset(assetName),
            ),
          ),
          Container(
            margin:
                const EdgeInsets.only(top: 50, left: 10, right: 10, bottom: 40),
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      args.category.toUpperCase(),
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                          color: ColorConstants.grey.withOpacity(0.6)),
                    ),
                    Text(
                      args.topic,
                      style: const TextStyle(
                          fontWeight: FontWeight.w800, fontSize: 24),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Column(children: [
                        CountSelectionWidget(
                            count: countQuestions,
                            increment: incrementCount,
                            decrement: decrementCount),
                        PointsCard(
                          count: countQuestions,
                        )
                      ]),
                    ),
                    Text(
                      'DESCRIPTION',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                          color: ColorConstants.grey.withOpacity(0.6)),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(args.description),
                    ),
                    AuthorWidget(
                      author: args.author,
                    ),
                  ],
                ),
                Button(buttonText: 'Start', onPress: () {}, disabled: false)
              ],
            ),
          )
        ]));
  }
}
