import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class FriendsNotFound extends StatelessWidget {
  final String name;
  const FriendsNotFound({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return name.isEmpty
        ? Center(
            child: Column(children: [
              Lottie.asset('lib/assets/lottieAnimations/typing.json'),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  'Start typing to find someone...',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 19),
                ),
              )
            ]),
          )
        : Center(
            child: Column(
              children: [
                Lottie.asset(
                    'lib/assets/lottieAnimations/completedQuizzesNotFound.json',
                    height: 200),
                Text(
                  'Any user with name $name was found',
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 19),
                )
              ],
            ),
          );
  }
}
