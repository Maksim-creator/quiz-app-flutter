import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:quizz_app/featrures/quizzes/models/quiz.dart';
import 'package:quizz_app/featrures/quizzes/widgets/AuthorWidget.dart';
import 'package:quizz_app/featrures/quizzes/widgets/CountSelectionWidget.dart';
import 'package:quizz_app/featrures/quizzes/widgets/Divider.dart';
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

  lounchUrl(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final Topic args = ModalRoute.of(context)!.settings.arguments as Topic;
    final QuizScreenArgs screenArgs = QuizScreenArgs(
        topic: args.topic,
        count: countQuestions,
        icon: widget.topic.icon,
        id: widget.topic.id);
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
          backgroundColor: ColorConstants.violet,
          elevation: 0,
        ),
        body: SafeArea(
            child: Stack(children: [
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
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: SingleChildScrollView(
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
                      Column(
                        children: [
                          const DividerWidget(
                              text:
                                  'Not ready to start? Check out the theory below.'),
                          Button(
                              backgroundColor: Colors.deepPurple.shade300,
                              leftIcon: const Icon(
                                Icons.book,
                                size: 20,
                              ),
                              buttonText: 'Check theory',
                              onPress: () => lounchUrl(widget.topic.tipLink),
                              disabled: false),
                          const DividerWidget(
                            text: 'or',
                          ),
                          Button(
                              buttonText: 'Start',
                              onPress: () {
                                Navigator.of(context).pushReplacementNamed(
                                    '/main_screen/quiz_screen',
                                    arguments: screenArgs);
                              },
                              disabled: false)
                        ],
                      )
                    ],
                  ),
                ),
              ))
        ])));
  }
}
