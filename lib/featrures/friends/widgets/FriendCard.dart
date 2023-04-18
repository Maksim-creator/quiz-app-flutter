import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:indexed/indexed.dart';
import 'package:quizz_app/assets/colors.dart';

class FriendCard extends StatelessWidget {
  final String name;
  final int points;
  final String avatar;

  const FriendCard(
      {super.key,
      required this.name,
      required this.points,
      required this.avatar});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 5),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: ColorConstants.grey.withOpacity(0.3),
              spreadRadius: 0.3,
              blurRadius: 2,
              offset: const Offset(0, 3),
            )
          ],
          color: Colors.grey.shade200,
          border: Border.all(width: 1.5, color: Colors.grey.withOpacity(0.4)),
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(100)),
                  child: Container(
                    height: 60,
                    width: 60,
                    color: Colors.white,
                    child: Image.memory(
                      base64Decode(avatar),
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 7),
                child: Text(
                  name,
                  style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          SizedBox(
            width: 80,
            height: 30,
            child: Stack(
              children: [
                Indexer(
                  alignment: Alignment.centerLeft,
                  children: [
                    Indexed(
                      index: 20,
                      child: Positioned(
                        left: 5,
                        child: Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.purple.shade100),
                          child: const Text(
                            'QP',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic),
                          ),
                        ),
                      ),
                    ),
                    Indexed(
                      index: 10,
                      child: Positioned(
                        left: 25,
                        child: Container(
                          alignment: Alignment.center,
                          width: 50,
                          height: 30,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade400),
                              color: Colors.grey.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            points.toString(),
                            style: const TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
