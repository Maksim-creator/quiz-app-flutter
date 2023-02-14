import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quizz_app/assets/colors.dart';
import 'package:quizz_app/widgets/Button.dart';

class FindFriendsCard extends StatefulWidget {
  const FindFriendsCard({super.key});

  @override
  State<FindFriendsCard> createState() => _FindFriendsCardState();
}

class _FindFriendsCardState extends State<FindFriendsCard> {
  String assetName = 'lib/assets/svg/circle.svg';

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white.withOpacity(0.2),
      ),
      child: Column(children: [
        Stack(
          children: [
            Positioned(
              left: -60,
              top: -60,
              child: SvgPicture.asset(assetName),
            ),
            const Center(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 30),
                child: Text(
                  'COMING SOON',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontSize: 15,
                      letterSpacing: 3),
                ),
              ),
            ),
            const Center(
              child: Padding(
                padding:
                    EdgeInsets.only(top: 70, bottom: 50, left: 70, right: 70),
                child: Text(
                  'Take part in challenges \n with friends or other \n players',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      letterSpacing: 0.5),
                ),
              ),
            ),
            Positioned(
              right: -60,
              bottom: -60,
              child: SvgPicture.asset(assetName),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 150, bottom: 30),
                child: Button(
                  buttonText: 'Find Friends',
                  onPress: () {},
                  disabled: false,
                  leftIcon: Icon(
                    Icons.travel_explore,
                    color: ColorConstants.violet,
                  ),
                  maximumSize: Size.zero,
                  backgroundColor: Colors.white,
                  textStyle: TextStyle(
                      color: ColorConstants.violet,
                      fontWeight: FontWeight.w700),
                ),
              ),
            )
          ],
        ),
      ]),
    );
  }
}
