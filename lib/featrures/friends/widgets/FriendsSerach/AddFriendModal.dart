import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quizz_app/featrures/friends/bloc/friends_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../widgets/Button.dart';

class AddFriendCard extends StatefulWidget {
  final String name;
  final int friendId;

  const AddFriendCard({super.key, required this.name, required this.friendId});

  @override
  State<AddFriendCard> createState() => _AddFriendCardState();
}

class _AddFriendCardState extends State<AddFriendCard> {
  void sendRequest(int friendId) {
    context
        .read<FriendsBloc>()
        .add(FriendsEvent.sendFriendRequest(friendId: friendId));
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))),
      content: SizedBox(
          height: 260,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Transform.scale(
                    scale: 1.1,
                    child: Lottie.asset(
                      'lib/assets/lottieAnimations/submitRequest.json',
                      height: 180,
                    ),
                  ),
                  RichText(
                      text: TextSpan(
                          text: 'Send a friend reqest to ',
                          style: const TextStyle(
                              color: Colors.black, fontSize: 15),
                          children: [
                        TextSpan(
                            text: widget.name,
                            style:
                                const TextStyle(fontWeight: FontWeight.bold)),
                        const TextSpan(text: '?')
                      ]))
                ],
              ),
              Button(
                  backgroundColor: Colors.green.shade300,
                  buttonText: 'Send',
                  onPress: () {
                    sendRequest(widget.friendId);
                  },
                  disabled: false)
            ],
          )),
    );
  }
}
