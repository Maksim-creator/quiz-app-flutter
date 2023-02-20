import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizz_app/assets/colors.dart';
import 'package:quizz_app/featrures/auth/bloc/auth_bloc.dart';
import 'package:quizz_app/featrures/user/utils/helpers.dart';

class HomeHeader extends StatefulWidget {
  const HomeHeader({super.key});

  @override
  State<HomeHeader> createState() => _HomeHeaderState();
}

class _HomeHeaderState extends State<HomeHeader> {
  final String baseAvatar = 'lib/assets/baseAvatar.png';

  @override
  Widget build(BuildContext context) {
    final state = context.watch<AuthBloc>().state;

    Greeting greetingMessage = defineTimePeriod(DateTime.now().hour);
    return state.when(loading: () {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }, loaded: (userLoaded) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    greetingMessage.icon,
                    color: ColorConstants.lightPink,
                    size: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 7),
                    child: Text(
                      greetingMessage.greeting,
                      style: TextStyle(
                        color: ColorConstants.lightPink,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  userLoaded.name,
                  style: const TextStyle(color: Colors.white, fontSize: 17),
                ),
              )
            ],
          ),
          ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(100)),
              child: userLoaded.avatar.isNotEmpty
                  ? Image.memory(
                      base64Decode(userLoaded.avatar),
                      width: 65,
                      height: 65,
                      fit: BoxFit.cover,
                    )
                  : Image.asset(
                      baseAvatar,
                      width: 65,
                      height: 65,
                      fit: BoxFit.cover,
                    )),
        ],
      );
    }, error: () {
      return Text('data');
    });
  }
}
