import 'package:flutter/material.dart';
import 'package:flutter_device_type/flutter_device_type.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quizz_app/widgets/Avatar.dart';

import '../models/leaderboard.dart';

class Podium extends StatefulWidget {
  final List<Leader> podium;

  const Podium({super.key, required this.podium});

  @override
  State<Podium> createState() => _PodiumState();
}

class Position {
  final double? left;
  final double? right;
  final double? top;
  Position({this.left, this.right, this.top});
}

class _PodiumState extends State<Podium> {
  final String assetName = 'lib/assets/svg/leaderboard.svg';
  final String baseAvatar = 'lib/assets/baseAvatar.png';

  @override
  Widget build(BuildContext context) {
    List<Leader> leaderboard = widget.podium;

    List<Position> positions = [
      Position(
          left: Device.get().isTablet ? 0 : 50,
          top: Device.get().isTablet ? 120 : 60),
      Position(
          left: Device.get().isTablet ? 240 : Device.screenWidth / 2.5,
          top: Device.get().isTablet ? 0 : 15),
      Position(
          right: Device.get().isTablet ? 0 : 50,
          top: Device.get().isTablet ? 170 : 80),
    ];

    return SizedBox(
        height: Device.get().isTablet ? 500 : 285,
        width: Device.get().isTablet ? 600 : 400,
        child: Stack(children: [
          ...positions.map(
            (e) {
              int index = positions.indexOf(e);
              return Positioned(
                  top: e.top,
                  left: e.left,
                  right: e.right,
                  child: Column(
                    children: [
                      Avatar(
                        avatar: leaderboard[index].avatar,
                        width: Device.get().isTablet ? 120 : 60,
                        height: Device.get().isTablet ? 120 : 60,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          leaderboard[index].name,
                          style: const TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w700),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white30,
                            borderRadius: BorderRadius.circular(10)),
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 5),
                        child: Text(
                          '${leaderboard[index].totalExperience} QP',
                          style: const TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w700),
                        ),
                      )
                    ],
                  ));
            },
          ).toList(),
          !Device.get().isTablet
              ? Positioned(
                  left: 50,
                  top: 90,
                  child: Transform.scale(
                    scale: 1.7,
                    child: SvgPicture.asset(assetName),
                  ))
              : Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Center(
                    child: Transform.scale(
                      scale: 4.5,
                      child: SvgPicture.asset(assetName),
                    ),
                  ))
        ]));
  }
}
