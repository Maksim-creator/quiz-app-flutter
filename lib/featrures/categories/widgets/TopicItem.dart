import 'package:flutter/material.dart';
import 'package:flutter_device_type/flutter_device_type.dart';
import 'package:quizz_app/featrures/quizzes/models/quiz.dart';

import '../../../assets/colors.dart';

class TopicItem extends StatefulWidget {
  final Topic topic;

  const TopicItem({super.key, required this.topic});

  @override
  State<TopicItem> createState() => _TopicItemState();
}

class _TopicItemState extends State<TopicItem> {
  @override
  Widget build(BuildContext context) {
    final Topic topic = widget.topic;

    return OutlinedButton(
        style: OutlinedButton.styleFrom(
            minimumSize: Size.zero,
            padding: EdgeInsets.zero,
            side: const BorderSide(color: Colors.transparent)),
        onPressed: () {
          Navigator.of(context)
              .pushNamed('/main_screen/count_selection', arguments: topic);
        },
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 6),
          padding: EdgeInsets.symmetric(
              vertical: Device.get().isTablet ? 14 : 8, horizontal: 12),
          decoration: BoxDecoration(
              color: ColorConstants.lightViolet,
              boxShadow: [
                BoxShadow(
                  color: ColorConstants.grey.withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 4,
                  offset: const Offset(2, 2),
                ),
              ],
              borderRadius: BorderRadius.circular(10)),
          child: Row(children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Icon(
                IconData(int.parse(topic.icon), fontFamily: 'MaterialIcons'),
                color: ColorConstants.violet,
                size: Device.get().isTablet ? 30 : 20,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    topic.topic,
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.grey.shade800,
                        fontSize: Device.get().isTablet ? 18 : 14),
                  ),
                  Text(
                    'Created by ${topic.author}',
                    style: TextStyle(
                        fontSize: Device.get().isTablet ? 16 : 12,
                        color: Colors.grey.shade700),
                  )
                ],
              ),
            )
          ]),
        ));
  }
}
