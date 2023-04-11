import 'package:flutter/material.dart';
import 'package:quizz_app/featrures/user/discover/widgets/FriendsList.dart';

class FriendsContent extends StatefulWidget {
  const FriendsContent({super.key});

  @override
  State<FriendsContent> createState() => _FriendsContentState();
}

class _FriendsContentState extends State<FriendsContent> {
  @override
  Widget build(BuildContext context) {
    return const FriendsList();
  }
}
