import 'package:flutter/material.dart';

class DividerWidget extends StatefulWidget {
  final String text;

  const DividerWidget({super.key, required this.text});

  @override
  State<DividerWidget> createState() => _DividerWidgetState();
}

class _DividerWidgetState extends State<DividerWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              height: 0.5,
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              widget.text,
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
            ),
          ),
          Expanded(
            child: Container(
              height: 0.5,
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
