import 'package:flutter/material.dart';

import '../../../assets/colors.dart';

class PointsCard extends StatefulWidget {
  final int count;
  const PointsCard({super.key, required this.count});

  @override
  State<PointsCard> createState() => _PointsCardState();
}

class _PointsCardState extends State<PointsCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: ColorConstants.lightViolet,
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(100)),
            child: Container(
              height: 40,
              width: 40,
              color: Colors.pink.shade300,
              child: const Icon(
                Icons.extension,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text(
              '+${widget.count * 5} points',
              style: const TextStyle(fontWeight: FontWeight.w700),
            ),
          )
        ],
      ),
    );
  }
}
