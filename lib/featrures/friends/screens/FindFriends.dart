
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_device_type/flutter_device_type.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quizz_app/assets/colors.dart';

class FindFriends extends StatefulWidget {
  const FindFriends({super.key});

  @override
  State<FindFriends> createState() => _FindFriendsState();
}

class _FindFriendsState extends State<FindFriends> {
  String circleAsset = 'lib/assets/svg/circle.svg';
  String personalCode = 'GTJ4F3';

  void copyPersonalCode() async {
    Clipboard.setData(ClipboardData(text: personalCode))
        .then((value) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: Colors.green.shade600,
              duration: const Duration(seconds: 2),
              content: const Text(
                'Personal code was copied to your clipboard!',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.violet,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(
              Icons.chevron_left,
              color: Colors.white,
              size: 32,
            )),
        title: const Text(
          'Invite friends',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: ColorConstants.violet,
        elevation: 0,
      ),
      body: SafeArea(
          child: Center(
              heightFactor: 1.5,
              child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        decoration:
                            const BoxDecoration(color: Colors.transparent),
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.network(
                              'https://www.shareicon.net/data/512x512/2016/05/24/770137_man_512x512.png',
                              height: 70,
                              width: 70,
                            ),
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Transform.scale(
                                  scale: 1.2,
                                  child: SvgPicture.asset(circleAsset),
                                ),
                                const Text(
                                  'VS',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                )
                              ],
                            ),
                            Image.network(
                              'https://cdn-icons-png.flaticon.com/512/1154/1154478.png?w=1380&t=st=1680018703~exp=1680019303~hmac=068907af78235bb53e2cd3f7ab8fc8191fbf9f859a8d9a467fafa43c43a8e17c',
                              height: 70,
                              width: 70,
                            ),
                          ],
                        ),
                      ),
                      Stack(
                        children: [
                          Positioned(
                              child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                                ((Device.width - 70) / 80).floor(),
                                (index) => Container(
                                      width: 25,
                                      height: 25,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(100)),
                                    )),
                          )),
                          Positioned(
                              child: Container(
                            margin: const EdgeInsets.only(top: 10),
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 25),
                            decoration:
                                const BoxDecoration(color: Colors.white),
                            child: Column(
                              children: [
                                const Text(
                                  'Invite friends and get a bonus points for every new player!',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                Container(
                                  width: double.infinity,
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 30),
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 17, horizontal: 20),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 2,
                                          color: ColorConstants.violet
                                              .withOpacity(0.4)),
                                      borderRadius: BorderRadius.circular(20),
                                      color: ColorConstants.lightViolet),
                                  child: SelectableText(
                                    personalCode,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                            child: OutlinedButton(
                                                style: OutlinedButton.styleFrom(
                                                    backgroundColor:
                                                        ColorConstants.violet,
                                                    shape:
                                                        const StadiumBorder(),
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        vertical: 12)),
                                                onPressed: copyPersonalCode,
                                                child: const Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Icon(
                                                      Icons.copy,
                                                      color: Colors.white,
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 7),
                                                      child: Text(
                                                        'Copy Code',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    )
                                                  ],
                                                ))),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10),
                                          child: OutlinedButton(
                                              style: OutlinedButton.styleFrom(
                                                  side: BorderSide(
                                                      width: 2,
                                                      color: ColorConstants
                                                          .violet
                                                          .withOpacity(0.3)),
                                                  padding: const EdgeInsets
                                                      .symmetric(vertical: 12),
                                                  shape: const StadiumBorder()),
                                              onPressed: () {},
                                              child: Icon(
                                                Icons.share_outlined,
                                                color: ColorConstants.violet,
                                              )),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                          backgroundColor:
                                              ColorConstants.violet,
                                          shape: const StadiumBorder(),
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 12)),
                                      onPressed: () => Navigator.pushNamed(
                                          context,
                                          '/main_screen/find_friends/search_users'),
                                      child: const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.search,
                                            color: Colors.white,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 7),
                                            child: Text(
                                              'Find by users search',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          )
                                        ],
                                      )),
                                )
                              ],
                            ),
                          ))
                        ],
                      )
                    ],
                  )))),
    );
  }
}
