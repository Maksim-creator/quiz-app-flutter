import 'package:flutter/material.dart';
import '../../../../assets/colors.dart';

class Timer extends StatefulWidget {
  final int seconds;

  const Timer({super.key, required this.seconds});

  @override
  State<Timer> createState() => _TimerState();
}

class _TimerState extends State<Timer> {
  @override
  Widget build(BuildContext context) {
    return widget.seconds == 0
        ? Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            child: Center(
              child: Text(
                "Time's up!",
                style: TextStyle(
                    color: ColorConstants.pink,
                    fontWeight: FontWeight.w700,
                    fontSize: 19),
              ),
            ),
          )
        : Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: ColorConstants.pink, width: 3),
            ),
            child: Center(
                child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      widget.seconds.toString(),
                      style: TextStyle(
                          color: ColorConstants.pink,
                          fontWeight: FontWeight.w700,
                          fontSize: 19),
                    ))),
          );
  }
}
