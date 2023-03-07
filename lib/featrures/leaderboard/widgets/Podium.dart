import 'package:flutter/material.dart';
import 'package:flutter_device_type/flutter_device_type.dart';
import 'package:flutter_svg/svg.dart';

import '../models/leaderboard.dart';

class Podium extends StatefulWidget {
  final List<Leader> leaderboard;

  const Podium({super.key, required this.leaderboard});

  @override
  State<Podium> createState() => _PodiumState();
}

class _PodiumState extends State<Podium> {
  final String assetName = 'lib/assets/svg/leaderboard.svg';
  final String baseAvatar = 'lib/assets/baseAvatar.png';

  @override
  Widget build(BuildContext context) {
    List<Leader> leaderboard = widget.leaderboard;

    return SizedBox(
      height: Device.get().isTablet ? 500 : 285,
      width: Device.get().isTablet ? 600 : 400,
      child: Stack(
        children: [
          Positioned(
              left: 50,
              top: 60,
              child: Column(
                children: [
                  ClipRRect(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(100)),
                      child: Container(
                        height: 60,
                        width: 60,
                        color: Colors.white,
                        child: Image.asset(
                          baseAvatar,
                          width: 65,
                          height: 65,
                          fit: BoxFit.cover,
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      leaderboard[1].name,
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white30,
                        borderRadius: BorderRadius.circular(10)),
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    child: Text(
                      '${leaderboard[1].totalExperience} QP',
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w700),
                    ),
                  )
                ],
              )),
          Positioned(
              left: Device.screenWidth / 2.5,
              top: 15,
              child: Column(
                children: [
                  ClipRRect(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(100)),
                      child: Container(
                        height: 60,
                        width: 60,
                        color: Colors.white,
                        child: Image.asset(
                          baseAvatar,
                          width: 65,
                          height: 65,
                          fit: BoxFit.cover,
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      leaderboard[0].name,
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white30,
                        borderRadius: BorderRadius.circular(10)),
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    child: Text(
                      '${leaderboard[0].totalExperience} QP',
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w700),
                    ),
                  )
                ],
              )),
          Positioned(
              right: 50,
              top: 80,
              child: Column(
                children: [
                  ClipRRect(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(100)),
                      child: Container(
                        height: 60,
                        width: 60,
                        color: Colors.white,
                        child: Image.asset(
                          baseAvatar,
                          width: 65,
                          height: 65,
                          fit: BoxFit.cover,
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      leaderboard[2].name,
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white30,
                        borderRadius: BorderRadius.circular(10)),
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    child: Text(
                      '${leaderboard[2].totalExperience} QP',
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w700),
                    ),
                  )
                ],
              )),
          !Device.get().isTablet
              ? Positioned(
                  left: 50,
                  top: 90,
                  child: Transform.scale(
                    scale: 1.7, //1.7
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
        ],
      ),
    );
  }
}
