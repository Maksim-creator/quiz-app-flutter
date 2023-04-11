import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_device_type/flutter_device_type.dart';
import 'package:indexed/indexed.dart';
import 'package:lottie/lottie.dart';
import 'package:quizz_app/assets/colors.dart';
import 'package:quizz_app/featrures/quizzes/models/quiz.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../home/widgets/Hexagon.dart';

class TopSelectedCard extends StatefulWidget {
  final Topic topic;

  const TopSelectedCard({super.key, required this.topic});

  @override
  State<TopSelectedCard> createState() => _TopSelectedCardState();
}

class _TopSelectedCardState extends State<TopSelectedCard> {
  final String lottieAnimation = 'lib/assets/lottieAnimations/topQuiz.json';

  redirectToBrowser(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final Topic topic = widget.topic;

    return Stack(
      children: [
        Indexer(
          children: [
            Indexed(
                index: 10,
                child: Positioned(
                    top: 0,
                    right: 25,
                    child: ClipPath(
                        clipper: Hexagon(),
                        child: Container(
                          padding: const EdgeInsets.only(
                              top: 2, left: 5, right: 5, bottom: 5),
                          color: ColorConstants.pink.withOpacity(0.8),
                          child: const Icon(
                            Icons.star,
                            size: 35,
                            color: Colors.yellow,
                          ),
                        )))),
            Container(
              height: 180,
              clipBehavior: Clip.hardEdge,
              width: double.infinity,
              margin: const EdgeInsets.only(top: 15),
              padding: const EdgeInsets.only(
                  left: 15, right: 15, top: 10, bottom: 15),
              decoration: BoxDecoration(
                  color: ColorConstants.violet,
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 10),
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(10)),
                            child: Icon(
                              IconData(int.parse(topic.icon),
                                  fontFamily: 'MaterialIcons'),
                              color: Colors.white,
                              size: Device.get().isTablet ? 35 : 25,
                            ),
                          ),
                          Text(
                            '${topic.topic} Quiz',
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              TextButton(
                                onPressed: () => Navigator.pushNamed(
                                    context, '/main_screen/count_selection',
                                    arguments: topic),
                                style: TextButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                    minimumSize: const Size(70, 30),
                                    tapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    backgroundColor: ColorConstants.lightPink),
                                child: const Text(
                                  'Play',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              TextButton(
                                  onPressed: () =>
                                      redirectToBrowser(topic.tipLink),
                                  style: TextButton.styleFrom(
                                      padding: EdgeInsets.zero,
                                      minimumSize: const Size(40, 30),
                                      tapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      backgroundColor:
                                          ColorConstants.lightPink),
                                  child: const Icon(
                                    Icons.description,
                                    color: Colors.white,
                                    size: 17,
                                  ))
                            ],
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          RichText(
                              text: TextSpan(
                                  text: 'Quiz was played ',
                                  style: const TextStyle(fontSize: 12),
                                  children: [
                                TextSpan(
                                    text: '${topic.selectedTimes} times',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold))
                              ])),
                          const SizedBox(
                            height: 4,
                          ),
                          RichText(
                            textAlign: TextAlign.left,
                            text: TextSpan(
                                text: 'Quiz was creared by ',
                                style: const TextStyle(fontSize: 12),
                                children: [
                                  TextSpan(
                                      text: topic.author,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold))
                                ]),
                          )
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Transform.scale(
                      scale: 1.4,
                      child: Lottie.asset(lottieAnimation,
                          width: 140, alignment: Alignment.bottomRight),
                    ),
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
