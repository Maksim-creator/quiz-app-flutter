import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_device_type/flutter_device_type.dart';
import 'package:flutter_svg/svg.dart';

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
      Position(left: 50, top: 60),
      Position(left: Device.screenWidth / 2.5, top: 15),
      Position(right: 50, top: 80),
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
                      ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(100)),
                          child: Container(
                            height: 60,
                            width: 60,
                            color: Colors.white,
                            child: Image.memory(
                              base64Decode(leaderboard[index].avatar),
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          )),
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
