import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizz_app/assets/colors.dart';
import 'package:quizz_app/featrures/auth/cubit/auth_cubit.dart';
import 'package:quizz_app/featrures/user/utils/helpers.dart';

class HomeHeader extends StatefulWidget {
  const HomeHeader({super.key});

  @override
  State<HomeHeader> createState() => _HomeHeaderState();
}

class _HomeHeaderState extends State<HomeHeader> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        Greeting greetingMessage = defineTimePeriod(DateTime.now().hour);
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
                    state.userData.name,
                    style: const TextStyle(color: Colors.white, fontSize: 17),
                  ),
                )
              ],
            ),
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(100)),
              child: Image.memory(
                base64Decode(state.userData.avatar),
                width: 65,
                height: 65,
                fit: BoxFit.cover,
              ),
            )
          ],
        );
      },
    );
  }
}
