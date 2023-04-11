import 'package:flutter/material.dart';
import 'package:quizz_app/featrures/user/discover/widgets/FriendCard.dart';

class FriendsList extends StatefulWidget {
  const FriendsList({super.key});

  @override
  State<FriendsList> createState() => _FriendsListState();
}

class _FriendsListState extends State<FriendsList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Text('Friends',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 19)),
          ),
          FriendCard(name: 'Maksym maksym', points: 405),
          FriendCard(name: 'Kalas Malas', points: 301),
          FriendCard(name: 'Kalas Malas', points: 301),
          FriendCard(name: 'Kalas Malas', points: 301),
          FriendCard(name: 'Kalas Malas', points: 301)
        ],
      ),
    );
  }
}
