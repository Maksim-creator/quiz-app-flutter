import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quizz_app/assets/colors.dart';

class RecentQuiz extends StatefulWidget {
  const RecentQuiz({super.key});

  @override
  State<RecentQuiz> createState() => _RecentQuizState();
}

class _RecentQuizState extends State<RecentQuiz> {
  String assenName = 'lib/assets/svg/lines.svg';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          color: ColorConstants.lightPink),
      margin: const EdgeInsets.symmetric(vertical: 25),
      child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            side: BorderSide.none,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            minimumSize: Size.zero,
            padding: EdgeInsets.zero,
          ),
          onPressed: () {},
          child: Stack(
            children: [
              Positioned(
                child: SvgPicture.asset(
                  assenName,
                  height: 80,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'RECENT QIUZ',
                          style: TextStyle(
                              color: ColorConstants.darkPink,
                              fontWeight: FontWeight.w700),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.headphones,
                                color: ColorConstants.darkTan,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text(
                                  'A Basic Music Quiz',
                                  style: TextStyle(
                                    color: ColorConstants.darkTan,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: ColorConstants.pink,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(100))),
                      child: const Text(
                        '50%',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
