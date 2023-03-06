import 'package:flutter/material.dart';
import 'package:flutter_device_type/flutter_device_type.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import 'package:quizz_app/assets/colors.dart';
import 'package:quizz_app/featrures/quizzes/constants.dart';
import 'package:quizz_app/featrures/quizzes/utils/utils.dart';

import '../models/quiz.dart';

class CupCardWidget extends StatefulWidget {
  final int donePercentage;
  final int score;
  final String shadowColor;
  final String mainColor;
  final List<Question> questions;

  const CupCardWidget(
      {super.key,
      required this.donePercentage,
      required this.score,
      required this.mainColor,
      required this.shadowColor,
      required this.questions});

  @override
  State<CupCardWidget> createState() => _CupCardWidgetState();
}

class _CupCardWidgetState extends State<CupCardWidget> {
  String assetName = 'lib/assets/svg/trophy.svg';
  String congratsJson = 'lib/assets/lottieAnimations/quizCongrats.json';

  @override
  Widget build(BuildContext context) {
    return Center(
        child: IntrinsicWidth(
      stepWidth: double.infinity,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
            color: ColorConstants.pink,
            borderRadius: BorderRadius.circular(15)),
        child: Column(children: [
          Center(
            child: Stack(
              children: [
                Center(
                  child: Lottie.asset(congratsJson, height: 150, width: 230),
                ),
                Center(
                  child: SvgPicture.string(trophySvgString
                      .replaceAll('main', widget.mainColor)
                      .replaceAll('shadow', widget.shadowColor)),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'You get +${widget.score * 5} Quiz Points',
              style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: Colors.white),
            ),
          ),
          OutlinedButton(
              style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white.withOpacity(0.3),
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                  side: const BorderSide(color: Colors.transparent)),
              onPressed: (() {
                _showAnswersDialog(context, widget.questions);
              }),
              child: const Text(
                'Check correct answers',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ))
        ]),
      ),
    ));
  }
}

Future<void> _showAnswersDialog(context, List<Question> questions) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        insetPadding: const EdgeInsets.all(10),
        title: Stack(children: [
          Center(
            child: Text(
              'Correct answers',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: Device.get().isTablet ? 22 : 14),
            ),
          ),
          Positioned(
              top: 0,
              right: 0,
              child: TextButton(
                  style: TextButton.styleFrom(
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      minimumSize: Size.zero,
                      padding: EdgeInsets.zero,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.zero))),
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Icon(
                    Icons.close,
                    color: Colors.black,
                  )))
        ]),
        content: SizedBox(
          width: Device.get().isTablet ? Device.width / 3 : 300,
          height: Device.get().isTablet ? Device.screenHeight / 2 : 500,
          child: ListView.builder(
              itemCount: questions.length - 1,
              shrinkWrap: true,
              itemBuilder: ((context, questionIndex) {
                final List<dynamic> answers =
                    transformAnswers(questions[questionIndex].answers);
                final List<dynamic> correctAnswers =
                    transformAnswers(questions[questionIndex].correctAnswers);

                return Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      color: ColorConstants.violet,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Text(
                        questions[questionIndex].question,
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 20),
                      ),
                    ),
                    ListView.builder(
                        itemCount: answers.length,
                        shrinkWrap: true,
                        physics: const ClampingScrollPhysics(),
                        itemBuilder: ((context, index) {
                          return Container(
                            margin: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 4),
                            decoration: BoxDecoration(
                                color: correctAnswers[index]!['value'] == true
                                    ? Colors.green.shade300
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 7),
                                child: Text(
                                  answers[index]!['value'],
                                  textAlign: TextAlign.center,
                                )),
                          );
                        }))
                  ]),
                );
              })),
        ),
      );
    },
  );
}
