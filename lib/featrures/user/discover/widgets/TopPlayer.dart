import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:quizz_app/assets/colors.dart';
import 'package:quizz_app/featrures/leaderboard/bloc/leaderboard_bloc.dart';
import 'package:quizz_app/widgets/Avatar.dart';

class TopPlayerCard extends StatefulWidget {
  const TopPlayerCard({super.key});

  @override
  State<TopPlayerCard> createState() => _TopPlayerCardState();
}

class _TopPlayerCardState extends State<TopPlayerCard> {
  @override
  void initState() {
    super.initState();
    context.read<LeaderboardBloc>().add(const LeaderboardEvent.getLeader());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LeaderboardBloc, LeaderboardState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Top player in the game',
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 18,
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 10),
                child: SizedBox(
                    height: 80,
                    child: Container(
                        padding: const EdgeInsets.only(
                            top: 10, bottom: 10, right: 29, left: 15),
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 4,
                                offset: const Offset(0, 4),
                              ),
                            ],
                            color: ColorConstants.violet,
                            borderRadius: BorderRadius.circular(15)),
                        child: state.isLoading || state.leader.avatar.isEmpty
                            ? Center(
                                child: CircularProgressIndicator(
                                  backgroundColor: ColorConstants.darkViolet,
                                  color: Colors.white,
                                ),
                              )
                            : Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 10),
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.white),
                                        shape: BoxShape.circle),
                                    child: const Padding(
                                      padding: EdgeInsets.all(8),
                                      child: Text(
                                        '1',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 10),
                                      ),
                                    ),
                                  ),
                                  Avatar(avatar: state.leader.avatar),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, top: 10, bottom: 10),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          state.leader.name,
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 15),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 5),
                                          child: Text(
                                            '${state.leader.totalExperience.toString()} point(s)',
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 12),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              )))),
          ],
        );
      },
    );
  }
}
