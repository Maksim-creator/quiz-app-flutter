import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quizz_app/api/entities.dart';
import 'package:quizz_app/api/quizzes.dart';
import 'package:quizz_app/assets/colors.dart';
import 'package:quizz_app/widgets/LoadingOverlay.dart';

class TopPicksCard extends StatefulWidget {
  const TopPicksCard({super.key});

  @override
  State<TopPicksCard> createState() => _TopPicksCardState();
}

class _TopPicksCardState extends State<TopPicksCard> {
  String lottieJson = 'lib/assets/lottieAnimations/topPicksCard.json';
  bool isLoading = false;
  TopSelected topSelected =
      TopSelected(id: '', category: '', icon: '', topic: '', quizzesCount: 0);

  void getTopSelected() async {
    try {
      setState(() {
        isLoading = true;
      });
      TopSelected quiz = await QuizzesApi().getTopSelectedQuiz(context);

      setState(() {
        topSelected = quiz;
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        isLoading = false;
      });
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => getTopSelected());
  }

  @override
  Widget build(BuildContext context) {
    return LoadingOverlay(
        loading: isLoading,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: OutlinedButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0))),
                  backgroundColor:
                      MaterialStateProperty.all(Colors.pink.shade50)),
              onPressed: () {},
              child: Stack(children: [
                Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                          margin: const EdgeInsets.only(top: 10, bottom: 70),
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
                      Column(
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
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 3),
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
                    ]),
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Lottie.asset(lottieJson,
                      height: 160,
                      width: 300,
                      alignment: Alignment.bottomRight),
                )
              ])),
        ));
  }
}
