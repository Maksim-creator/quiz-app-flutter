
import 'package:flutter/material.dart';
import 'package:quizz_app/assets/colors.dart';

class UserDetails extends StatefulWidget {
  const UserDetails({super.key});

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        decoration: BoxDecoration(
            color: ColorConstants.lightViolet,
            borderRadius: BorderRadius.circular(20)),
        child: const Center(
          child: Text(
            'User details will be coming soon...',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ));
  }
}
