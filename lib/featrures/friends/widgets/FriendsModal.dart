import 'package:flutter/material.dart';
import 'package:flutter_device_type/flutter_device_type.dart';
import 'package:quizz_app/featrures/friends/widgets/FriendsList.dart';
import 'package:quizz_app/widgets/Button.dart';

import '../../../assets/colors.dart';
import '../../user/profile/widgets/CircleTabIndicator.dart';

class FriendsModal extends StatelessWidget {
  const FriendsModal({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        contentPadding: const EdgeInsets.symmetric(horizontal: 5),
        backgroundColor: ColorConstants.violet,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
        insetPadding: const EdgeInsets.all(15),
        content: SizedBox(
          height: Device.screenHeight / 1.35,
          width: Device.get().isTablet
              ? Device.screenWidth / 1.5
              : Device.screenWidth,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    const Positioned(
                        bottom: 13,
                        child: Text(
                          'Communication',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        )),
                    Positioned(
                        right: 8,
                        bottom: 8,
                        child: OutlinedButton(
                            onPressed: () => Navigator.pop(context),
                            style: OutlinedButton.styleFrom(
                                minimumSize: const Size(30, 30),
                                backgroundColor: Colors.white,
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                padding: EdgeInsets.zero),
                            child: const Icon(
                              Icons.close,
                              color: Colors.black,
                            ))),
                  ],
                ),
              ),
              DefaultTabController(
                length: 2,
                child: Container(
                  height: Device.screenHeight / 1.5,
                  width: Device.screenWidth,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          TabBar(
                              indicator: CircleTabIndicator(
                                  color: ColorConstants.violet, radius: 3),
                              labelColor: ColorConstants.violet,
                              labelStyle: const TextStyle(
                                fontWeight: FontWeight.w700,
                              ),
                              unselectedLabelColor:
                                  Colors.grey.withOpacity(0.7),
                              indicatorSize: TabBarIndicatorSize.tab,
                              tabs: const [
                                Tab(
                                  height: 45,
                                  text: "Friends",
                                ),
                                Tab(height: 45, text: "Incoming"),
                              ]),
                          SizedBox(
                            height: Device.screenHeight / 2,
                            width: Device.screenWidth,
                            child: const TabBarView(children: [
                              FriendsList(),
                              SizedBox(),
                            ]),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 4),
                        child: Button(
                            buttonText: 'Find friends',
                            onPress: () {
                              Navigator.pushNamed(
                                  context, '/main_screen/find_friends');
                            },
                            disabled: false),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
