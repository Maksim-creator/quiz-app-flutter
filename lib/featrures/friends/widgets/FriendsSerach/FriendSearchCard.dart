import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_device_type/flutter_device_type.dart';
import 'package:quizz_app/featrures/auth/models/user_data.dart';
import 'package:quizz_app/featrures/friends/widgets/FriendCard.dart';
import 'package:quizz_app/featrures/friends/widgets/FriendsSerach/AddFriendModal.dart';

class FriendSearchCard extends StatefulWidget {
  final User user;
  final int myId;
  final int index;
  final List<int> friends;
  final List<int> requestSent;

  const FriendSearchCard(
      {super.key,
      required this.user,
      required this.myId,
      required this.index,
      required this.friends,
      required this.requestSent});

  @override
  State<FriendSearchCard> createState() => _FriendSearchCardState();
}

class _FriendSearchCardState extends State<FriendSearchCard> {
  bool started = false;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {
          started = true;
        }));
    super.initState();
  }

  void sendRequest() async {}

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: Duration(milliseconds: 400 + (widget.index * 150)),
      opacity: started ? 1 : 0,
      child: AnimatedContainer(
        width: Device.screenWidth,
        curve: Curves.easeInOut,
        duration: Duration(milliseconds: 400 + (widget.index * 200)),
        transform:
            Matrix4.translationValues(started ? 0 : 5, started ? 0 : 5, 0),
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        margin: const EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 1.5, color: Colors.grey.withOpacity(0.4)),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300.withOpacity(0.3),
              spreadRadius: 0.3,
              blurRadius: 5,
              offset: const Offset(0, 3),
            )
          ],
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(
            children: [
              Row(
                children: [
                  ClipRRect(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(100)),
                      child: Container(
                        height: 60,
                        width: 60,
                        color: Colors.white,
                        child: Image.memory(
                          base64Decode(widget.user.avatar),
                          width: 60,
                          height: 60,
                          fit: BoxFit.cover,
                        ),
                      )),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Text(
                        widget.user.name,
                        style: const TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 15),
                      ),
                    ),
                    QuizPoints(points: widget.user.totalExperience)
                  ],
                ),
              )
            ],
          ),
          widget.myId == widget.user.id
              ? const SizedBox.shrink()
              : widget.friends.contains(widget.user.id)
                  ? Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 5),
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.green,
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.greenAccent, blurRadius: 2)
                                ]),
                          ),
                          const Text(
                            'Friend',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12),
                          )
                        ],
                      ),
                    )
                  : widget.requestSent.contains(widget.user.id)
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 5),
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.yellow,
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.yellowAccent,
                                        blurRadius: 2)
                                  ]),
                            ),
                            const Text(
                              'Request sent',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12),
                            )
                          ],
                        )
                      : OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              minimumSize: Size.zero,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (ctx) => AddFriendCard(
                                  name: widget.user.name,
                                  friendId: widget.user.id),
                            );
                          },
                          child: const Icon(
                            Icons.person_add,
                            color: Colors.black,
                          )),
        ]),
      ),
    );
  }
}
