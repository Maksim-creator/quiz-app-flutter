import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_device_type/flutter_device_type.dart';
import 'package:quizz_app/featrures/auth/models/user_data.dart';
import 'package:quizz_app/featrures/friends/widgets/FriendsSerach/AddFriendModal.dart';

import '../../../../assets/colors.dart';

class FriendCard extends StatefulWidget {
  final User user;
  final int myId;
  final int index;

  const FriendCard({
    super.key,
    required this.user,
    required this.myId,
    required this.index,
  });

  @override
  State<FriendCard> createState() => _FriendCardState();
}

class _FriendCardState extends State<FriendCard> {
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
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        margin: const EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: ColorConstants.grey.withOpacity(0.7),
              spreadRadius: 1,
              blurRadius: 4,
              offset: const Offset(2, 2),
            ),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.user.name,
                      style: const TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 15),
                    ),
                    Text(
                      '${widget.user.totalExperience.toString()} points',
                      style:
                          TextStyle(fontSize: 12, color: Colors.grey.shade700),
                    )
                  ],
                ),
              )
            ],
          ),
          widget.myId == widget.user.id
              ? const SizedBox.shrink()
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
                      builder: (ctx) => AddFriendCard(name: widget.user.name),
                    );
                  },
                  child: const Icon(
                    Icons.person_add,
                    color: Colors.black,
                  ))
        ]),
      ),
    );
  }
}
