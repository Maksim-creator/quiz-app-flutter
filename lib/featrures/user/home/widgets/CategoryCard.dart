import 'package:flutter/material.dart';
import 'package:quizz_app/assets/colors.dart';

class CategoryCard extends StatefulWidget {
  final String category;
  final String icon;
  final int selectedTimes;
  final int quizzesCount;

  const CategoryCard(
      {super.key,
      required this.category,
      required this.icon,
      required this.quizzesCount,
      required this.selectedTimes});

  @override
  State<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 7),
      child: OutlinedButton(
        onPressed: () {},
        style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 5),
              child: Row(children: [
                Container(
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        color: ColorConstants.lightViolet.withOpacity(0.4),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Icon(
                        IconData(int.parse(widget.icon),
                            fontFamily: 'MaterialIcons'),
                        color: ColorConstants.violet,
                      ),
                    )),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.category,
                      style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                          color: Colors.black),
                    ),
                    Row(
                      children: [
                        Text(
                          '${widget.quizzesCount} quizzes',
                          style: TextStyle(
                              color: ColorConstants.grey.withOpacity(0.8),
                              fontSize: 12),
                        ),
                      ],
                    )
                  ],
                )
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Icon(
                Icons.chevron_right,
                color: ColorConstants.violet,
              ),
            )
          ],
        ),
      ),
    );
  }
}
