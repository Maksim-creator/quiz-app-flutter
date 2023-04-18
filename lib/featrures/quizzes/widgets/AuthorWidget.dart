
import 'package:flutter/material.dart';

class AuthorWidget extends StatefulWidget {
  final String author;

  const AuthorWidget({super.key, required this.author});

  @override
  State<AuthorWidget> createState() => _AuthorWidgetState();
}

class _AuthorWidgetState extends State<AuthorWidget> {
  dynamic userAvatar;
  final String baseAvatar = 'lib/assets/baseAvatar.png';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
        ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(100)),
            child: SizedBox(
              height: 40,
              width: 40,
              child: Image.asset(
                baseAvatar,
                width: 65,
                height: 65,
                fit: BoxFit.cover,
              ),
            )),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.author,
                style: const TextStyle(fontWeight: FontWeight.w700),
              ),
              const Text(
                'Creator',
                style: TextStyle(fontSize: 11),
              )
            ],
          ),
        )
      ]),
    );
  }
}
