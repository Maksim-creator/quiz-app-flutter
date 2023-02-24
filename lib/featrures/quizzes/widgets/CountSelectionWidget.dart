import 'package:flutter/material.dart';
import '../../../assets/colors.dart';

class CountSelectionWidget extends StatefulWidget {
  final int count;
  final void Function() increment;
  final void Function() decrement;

  const CountSelectionWidget(
      {super.key,
      required this.count,
      required this.increment,
      required this.decrement});

  @override
  State<CountSelectionWidget> createState() => _CountSelectionWidgetState();
}

class _CountSelectionWidgetState extends State<CountSelectionWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      decoration: BoxDecoration(
          color: ColorConstants.lightViolet,
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(100)),
                child: Container(
                  height: 40,
                  width: 40,
                  color: ColorConstants.violet,
                  child: const Icon(
                    Icons.question_mark,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(
                  '${widget.count} questions',
                  style: const TextStyle(fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 3),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: ColorConstants.violet,
                        minimumSize: Size.zero,
                        shape: const CircleBorder(),
                        padding: EdgeInsets.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                    onPressed: widget.count < 20 ? widget.increment : null,
                    child: const Icon(
                      Icons.expand_less,
                      size: 20,
                    )),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: ColorConstants.violet,
                        shape: const CircleBorder(),
                        minimumSize: Size.zero,
                        padding: EdgeInsets.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                    onPressed: widget.count > 5 ? widget.decrement : null,
                    child: const Icon(
                      Icons.expand_more,
                      size: 20,
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
