import 'package:flutter/material.dart';
import 'package:indexed/indexed.dart';
import 'package:quizz_app/assets/colors.dart';
import 'package:quizz_app/featrures/friends/widgets/Buttons.dart';
import 'package:quizz_app/widgets/Avatar.dart';

class FriendCard extends StatefulWidget {
  final int id;
  final String name;
  final int points;
  final String avatar;
  final bool forIncomingRequests;

  const FriendCard(
      {super.key,
      required this.id,
      required this.name,
      required this.points,
      required this.avatar,
      this.forIncomingRequests = false});

  @override
  State<FriendCard> createState() => _FriendCardState();
}

class _FriendCardState extends State<FriendCard> {
  bool isVisible = false;
  double x = 0;
  double y = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        GestureDetector(
          onTapDown: (details) {
            setState(() {
              x = details.localPosition.dx;
              y = details.localPosition.dy;
              isVisible = !isVisible;
            });
          },
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
                side: BorderSide.none,
                padding: EdgeInsets.zero,
                foregroundColor: Colors.white,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)))),
            onPressed: () {},
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 5),
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: ColorConstants.grey.withOpacity(0.3),
                      spreadRadius: 0.3,
                      blurRadius: 2,
                      offset: const Offset(0, 3),
                    )
                  ],
                  color: Colors.grey.shade200,
                  border: Border.all(
                      width: 1.5, color: Colors.grey.withOpacity(0.4)),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Avatar(avatar: widget.avatar),
                      UserName(
                          name: widget.name,
                          forIncomingRequests: widget.forIncomingRequests,
                          points: widget.points)
                    ],
                  ),
                  !widget.forIncomingRequests
                      ? QuizPoints(points: widget.points)
                      : Buttons(
                          whoSentId: widget.id,
                        )
                ],
              ),
            ),
          ),
        ),
        isVisible
            ? Positioned(
                left: x,
                top: y - 50,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          width: 2, color: Colors.grey.withOpacity(0.5))),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 35,
                        child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                                backgroundColor: Colors.white,
                                side: BorderSide.none,
                                // maximumSize: Size(60, 20),
                                padding: EdgeInsets.zero),
                            onPressed: () {},
                            child: const Text(
                              'Remove friend',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 11),
                            )),
                      ),
                      Container(
                        height: 1,
                        width: 90,
                        color: Colors.grey.shade400,
                      ),
                      SizedBox(
                        height: 35,
                        child: OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                                backgroundColor: Colors.white,
                                side: BorderSide.none,
                                // maximumSize: Size(60, 20),
                                padding: EdgeInsets.zero),
                            child: const Text(
                              'Ask a battle',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 11),
                            )),
                      )
                    ],
                  ),
                ),
              )
            : const SizedBox.shrink()
      ],
    );
  }
}

class QuizPoints extends StatelessWidget {
  final int points;

  const QuizPoints({super.key, required this.points});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      height: 30,
      child: Stack(
        children: [
          Indexer(
            alignment: Alignment.centerLeft,
            children: [
              Indexed(
                index: 20,
                child: Positioned(
                  left: 5,
                  child: Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.purple.shade100),
                    child: const Text(
                      'QP',
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                ),
              ),
              Indexed(
                index: 10,
                child: Positioned(
                  left: 25,
                  child: Container(
                    alignment: Alignment.center,
                    width: 50,
                    height: 30,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      points.toString(),
                      style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class UserName extends StatelessWidget {
  final String name;
  final bool forIncomingRequests;
  final int points;

  const UserName(
      {required this.name,
      super.key,
      required this.forIncomingRequests,
      required this.points});

  @override
  Widget build(BuildContext context) {
    return forIncomingRequests
        ? Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Text(
                    name,
                    style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                QuizPoints(points: points),
              ],
            ),
          )
        : Padding(
            padding: const EdgeInsets.only(left: 7),
            child: Text(
              name,
              style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          );
  }
}
