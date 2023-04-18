import 'package:flutter/material.dart';
import 'package:flutter_device_type/flutter_device_type.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quizz_app/featrures/repositories/friends_repo.dart';

import '../../../../assets/colors.dart';
import '../../../../widgets/Button.dart';

class ShopCard extends StatefulWidget {
  const ShopCard({super.key});

  @override
  State<ShopCard> createState() => _ShopCardState();
}

class _ShopCardState extends State<ShopCard> {
  String assetName = 'lib/assets/svg/circle.svg';

  @override
  void initState() {
    FriendsRepo().getFriendsList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: Device.get().isTablet ? 300 : 235,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white.withOpacity(0.2),
      ),
      child: Stack(
        children: [
          Positioned(
            right: -80,
            top: -60,
            child: Transform.scale(
              scale: Device.get().isTablet ? 2 : 1,
              child: SvgPicture.asset(assetName),
            ),
          ),
          Positioned(
            left: -80,
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
                  'SHOP',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontSize: Device.get().isTablet ? 22 : 15,
                      letterSpacing: 3),
                ),
              ),
              Center(
                child: Text(
                  'Get some needed items',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: Device.get().isTablet ? 18 : 16,
                      letterSpacing: 0.5),
                ),
              ),
              Button(
                buttonText: 'Go to shop',
                onPress: () {},
                disabled: false,
                leftIcon: Icon(
                  Icons.shop_two_rounded,
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
