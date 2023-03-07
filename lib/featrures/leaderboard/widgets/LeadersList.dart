import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_device_type/flutter_device_type.dart';
import '../../../assets/colors.dart';
import '../models/leaderboard.dart';

class LeadersList extends StatefulWidget {
  final List<Leader> restLeaders;
  const LeadersList({super.key, required this.restLeaders});

  @override
  State<LeadersList> createState() => _LeadersListState();
}

class _LeadersListState extends State<LeadersList> {
  @override
  Widget build(BuildContext context) {
    List<Leader> restLeaders = widget.restLeaders;
    return Container(
        margin: EdgeInsets.only(
            top: Device.get().isTablet ? 150 : 30, left: 10, right: 10),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
            color: ColorConstants.lightViolet,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: SizedBox(
          height: Device.get().isTablet ? 500 : 260,
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: restLeaders.length,
              itemBuilder: (context, index) {
                Leader leader = restLeaders[index];
                return Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(children: [
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.grey, width: 1),
                          ),
                          child: Center(
                              child: Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Text(
                                    (index + 4).toString(),
                                    style: const TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 13),
                                  ))),
                        ),
                        ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(100)),
                            child: Container(
                              height: 60,
                              width: 60,
                              color: Colors.white,
                              child: Image.memory(
                                base64Decode(leader.avatar),
                                width: 60,
                                height: 60,
                                fit: BoxFit.cover,
                              ),
                            )),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            leader.name,
                            style: const TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 15),
                          ),
                          Text(
                            '${leader.totalExperience.toString()} points',
                            style: TextStyle(
                                fontSize: 12, color: Colors.grey.shade700),
                          )
                        ],
                      ),
                    )
                  ]),
                );
              }),
        ));
  }
}
