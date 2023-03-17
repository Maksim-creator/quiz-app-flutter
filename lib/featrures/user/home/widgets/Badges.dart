import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_device_type/flutter_device_type.dart';
import 'package:indexed/indexed.dart';
import 'package:quizz_app/assets/colors.dart';
import 'package:quizz_app/featrures/user/home/widgets/Hexagon.dart';
import 'package:quizz_app/featrures/user/models/badge.dart' as IBadge;

import '../../bloc/user_bloc.dart';

class Badges extends StatefulWidget {
  const Badges({super.key});

  @override
  State<Badges> createState() => _BadgesState();
}

class _BadgesState extends State<Badges> {
  @override
  void initState() {
    context.read<UserBloc>().add(const UserEvent.getBadges());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        return state.isLoading || state.badges.isEmpty
            ? Center(
                child: CircularProgressIndicator(
                  color: Colors.grey,
                  backgroundColor: ColorConstants.darkViolet,
                ),
              )
            : GridView.count(
                crossAxisCount: 3,
                children: List.generate(state.badges.length, (index) {
                  IBadge.Badge badge = state.badges[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    child: ClipPath(
                      clipper: Hexagon(),
                      child: Container(
                        color: Color(
                            int.parse('0xff${badge.badgeColor.substring(1)}')),
                        child: Stack(children: [
                          Indexer(
                            children: [
                              Indexed(
                                index: 100,
                                child: Center(
                                    child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            border: Border.all(
                                                color: Color(int.parse(
                                                    '0xff${badge.borderColor.substring(1)}')),
                                                width: 2),
                                            color: Color(int.parse(
                                                '0xff${badge.iconBackground.substring(1)}'))),
                                        child: Padding(
                                          padding: const EdgeInsets.all(5),
                                          child: Icon(
                                            IconData(int.parse(badge.icon),
                                                fontFamily: 'MaterialIcons'),
                                            size:
                                                Device.get().isTablet ? 70 : 25,
                                            color: Colors.white,
                                          ),
                                        ))),
                              ),
                              Indexed(
                                  index: 50,
                                  child: Positioned(
                                    bottom: Device.get().isTablet ? 0 : 10,
                                    top: Device.get().isTablet ? 100 : 45,
                                    left: Device.get().isTablet ? 52 : 12,
                                    child: Center(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(0.6),
                                          borderRadius:
                                              BorderRadius.circular(100),
                                        ),
                                        height:
                                            Device.get().isTablet ? 200 : 70,
                                        width: Device.get().isTablet ? 200 : 70,
                                      ),
                                    ),
                                  ))
                            ],
                          )
                        ]),
                      ),
                    ),
                  );
                }),
              );
      },
    );
  }
}
