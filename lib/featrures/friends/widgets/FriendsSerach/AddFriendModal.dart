import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../../widgets/Button.dart';

class AddFriendCard extends StatelessWidget {
  final String name;

  const AddFriendCard({super.key, required this.name});

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
                            text: name,
                            style:
                                const TextStyle(fontWeight: FontWeight.bold)),
                        const TextSpan(text: '?')
                      ]))
                ],
              ),
              Button(
                  backgroundColor: Colors.green.shade300,
                  buttonText: 'Send',
                  onPress: () {},
                  disabled: false)
            ],
          )),
    );
  }
}
