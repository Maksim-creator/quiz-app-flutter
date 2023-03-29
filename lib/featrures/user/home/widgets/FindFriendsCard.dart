import 'package:flutter/material.dart';
import 'package:flutter_device_type/flutter_device_type.dart';
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
      height: Device.get().isTablet ? 300 : 235,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white.withOpacity(0.2),
      ),
      child: Stack(
        children: [
          Positioned(
            left: -60,
            top: -60,
            child: Transform.scale(
              scale: Device.get().isTablet ? 2 : 1,
              child: SvgPicture.asset(assetName),
            ),
          ),
          Positioned(
            right: -60,
            bottom: -60,
            child: Transform.scale(
              scale: Device.get().isTablet ? 2 : 1,
              child: SvgPicture.asset(assetName),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Center(
                child: Text(
                  'COMING SOON',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontSize: Device.get().isTablet ? 22 : 15,
                      letterSpacing: 3),
                ),
              ),
              Center(
                child: Text(
                  'Take part in challenges \n with friends or other \n players',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: Device.get().isTablet ? 18 : 16,
                      letterSpacing: 0.5),
                ),
              ),
              Button(
                buttonText: 'Find Friends',
                onPress: () {
                  Navigator.pushNamed(context, '/main_screen/find_friends');
                },
                disabled: false,
                leftIcon: Icon(
                  Icons.travel_explore,
                  color: ColorConstants.violet,
                ),
                maximumSize: Size.zero,
                backgroundColor: Colors.white,
                textStyle: TextStyle(
                    color: ColorConstants.violet, fontWeight: FontWeight.w700),
              ),
            ],
          )
        ],
      ),
    );
  }
}
