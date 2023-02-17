import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizz_app/api/user.dart';
import 'package:quizz_app/assets/colors.dart';
import 'package:quizz_app/featrures/user/cubit/user_cubit.dart';

class TopPlayerCard extends StatefulWidget {
  const TopPlayerCard({super.key});

  @override
  State<TopPlayerCard> createState() => _TopPlayerCardState();
}

class _TopPlayerCardState extends State<TopPlayerCard> {
  bool _loading = false;

  Future getLeader() async {
    try {
      setState(() {
        _loading = true;
      });
      await UserApi().getLeader(context);
      setState(() {
        _loading = false;
      });
    } catch (e) {}
  }

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance
        .addPostFrameCallback((_) async => await getLeader());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, UserState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(top: 15, bottom: 10),
          child: Container(
            padding:
                const EdgeInsets.only(top: 10, bottom: 10, right: 29, left: 15),
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
            child: Row(
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
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(100)),
                  child: Image.memory(
                    base64Decode(state.leader.avatar),
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        state.leader.name,
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 15),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text(
                          '${state.leader.totalExperience.toString()} point(s)',
                          style: const TextStyle(
                              color: Colors.white, fontSize: 12),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
