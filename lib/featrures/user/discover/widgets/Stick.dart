import 'package:flutter/material.dart';

import '../../../../assets/colors.dart';

class Stick extends StatefulWidget {
  const Stick({super.key});

  @override
  State<Stick> createState() => _StickState();
}

class _StickState extends State<Stick> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.elliptical(60, 50),
              topRight: Radius.elliptical(60, 50))),
      height: 10,
      width: 50,
      child: IntrinsicHeight(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: 7,
            height: 7,
            decoration: BoxDecoration(
                color: ColorConstants.violet, shape: BoxShape.circle),
          )
        ],
      )),
    );
  }
}
