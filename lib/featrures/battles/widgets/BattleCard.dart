import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:quizz_app/featrures/auth/models/user_data.dart';
import 'package:quizz_app/featrures/battles/bloc/battles_bloc.dart';
import 'package:quizz_app/featrures/battles/models/battle/battle.dart';
import 'package:quizz_app/featrures/friends/widgets/FriendCard.dart';
import 'package:quizz_app/utils/api_requests.dart';
import 'package:quizz_app/widgets/Avatar.dart';

import '../../../assets/colors.dart';

class BattleCard extends StatefulWidget {
  final String topic;
  final String difficultyLevel;
  final String comment;
  final int bid;
  final int fromUserId;
  final int toUserId;
  final String? battleId;

  const BattleCard(
      {super.key,
      required this.fromUserId,
      required this.comment,
      required this.difficultyLevel,
      required this.topic,
      required this.toUserId,
      this.battleId,
      required this.bid});

  @override
  State<BattleCard> createState() => _BattleCardState();
}

class _BattleCardState extends State<BattleCard> {
  void rejectBattleRequest() {
    context.read<BattlesBloc>().add(BattlesEvent.rejectBattleRequest(Battle(
        to: widget.toUserId,
        topic: widget.topic,
        difficultyLevel: widget.difficultyLevel,
        bid: widget.bid,
        battleId: widget.battleId)));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
      height: 182,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.blueGrey.shade100.withOpacity(0.5),
              blurRadius: 1,
              spreadRadius: 2,
              offset: const Offset(0, 1),
            ),
          ]),
      child: FutureBuilder(
          future: ApiHelpersRequest().getUserById(widget.fromUserId),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(
                  color: Colors.white,
                  backgroundColor: ColorConstants.darkViolet,
                ),
              );
            }
            if (snapshot.hasData) {
              if (snapshot.connectionState == ConnectionState.done) {
                final User user = snapshot.data!;
                return Column(
                  children: [
                    Row(
                      children: [
                        Avatar(
                          avatar: user.avatar,
                          width: 65,
                          height: 65,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 5),
                              child: Text(
                                user.name,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                            ),
                            QuizPoints(points: user.totalExperience)
                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 50,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 7),
                                child: RichText(
                                  text: TextSpan(
                                      text: 'Topic: ',
                                      style:
                                          const TextStyle(color: Colors.black),
                                      children: [
                                        TextSpan(
                                            text: widget.topic,
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold))
                                      ]),
                                ),
                              ),
                              RichText(
                                text: TextSpan(
                                    text: 'Difficulty level: ',
                                    style: const TextStyle(color: Colors.black),
                                    children: [
                                      TextSpan(
                                          text: widget.difficultyLevel,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold))
                                    ]),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 50,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text('Bid:'),
                                  QuizPoints(points: widget.bid)
                                ],
                              ),
                              RichText(
                                text: TextSpan(
                                    text: 'Comment: ',
                                    style: const TextStyle(color: Colors.black),
                                    children: [
                                      TextSpan(
                                          text: widget.comment,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold))
                                    ]),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10)))),
                              child: const Text(
                                'ACCEPT',
                                style: TextStyle(color: Colors.white),
                              )),
                          const SizedBox(
                            width: 10,
                          ),
                          OutlinedButton(
                              onPressed: rejectBattleRequest,
                              style: OutlinedButton.styleFrom(
                                  backgroundColor: Colors.red,
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10)))),
                              child: const Text(
                                'DECLINE',
                                style: TextStyle(color: Colors.white),
                              ))
                        ],
                      ),
                    )
                  ],
                );
              }
              return const Text('no battle requests');
            }
            return const Center(
              child: Text(
                'Something went wrong with gettin battle request. Try again later.',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            );
          }),
    );
  }
}
