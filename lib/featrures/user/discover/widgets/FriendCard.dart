import 'package:flutter/material.dart';

class FriendCard extends StatefulWidget {
  final String name;
  final int points;

  const FriendCard({super.key, required this.name, required this.points});

  @override
  State<FriendCard> createState() => _FriendCardState();
}

class _FriendCardState extends State<FriendCard> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.network(
          "https://static.vecteezy.com/system/resources/previews/002/002/403/large_2x/man-with-beard-avatar-character-isolated-icon-free-vector.jpg",
          width: 70,
          height: 70,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: Text(
                widget.name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              '${widget.points} points',
              style: TextStyle(fontSize: 13, color: Colors.grey.shade600),
            )
          ],
        )
      ],
    );
  }
}
