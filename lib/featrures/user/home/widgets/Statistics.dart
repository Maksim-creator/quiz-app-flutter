import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_device_type/flutter_device_type.dart';
import 'package:quizz_app/assets/colors.dart';

import '../../../auth/bloc/auth_bloc.dart';

class Statistics extends StatefulWidget {
  const Statistics({super.key});

  @override
  State<Statistics> createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          decoration: BoxDecoration(
              color: ColorConstants.violet,
              borderRadius: BorderRadius.circular(15)),
          child: state.isLoading
              ? CircularProgressIndicator(
                  color: Colors.white,
                  backgroundColor: ColorConstants.darkViolet,
                )
              : Row(
                  mainAxisAlignment: Device.get().isTablet
                      ? MainAxisAlignment.spaceAround
                      : MainAxisAlignment.spaceBetween,
                  children: [
                      Column(
                        children: [
                          const Icon(
                            Icons.star_outline,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: Text('Points',
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.5),
                                    fontWeight: FontWeight.w500)),
                          ),
                          Text(
                            state.data.totalExperience.toString(),
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                              Colors.grey.shade400.withOpacity(0.3),
                              Colors.grey.shade400,
                              Colors.grey.shade400.withOpacity(0.3)
                            ])),
                        height: 50,
                        width: 1,
                      ),
                      Column(
                        children: [
                          const Icon(
                            Icons.public,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: Text('World rank',
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.5),
                                    fontWeight: FontWeight.w500)),
                          ),
                          Text(
                            '#${state.data.rank.toString()}',
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                              Colors.grey.shade400.withOpacity(0.3),
                              Colors.grey.shade400,
                              Colors.grey.shade400.withOpacity(0.3)
                            ])),
                        height: 50,
                        width: 1,
                      ),
                      Column(
                        children: [
                          const Icon(
                            Icons.monetization_on,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: Text(
                              'Balance',
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Text(
                            state.data.balance.toString(),
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w700),
                          )
                        ],
                      )
                    ]),
        );
      },
    );
  }
}
