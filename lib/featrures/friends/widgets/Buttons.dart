import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/friends_bloc.dart';

class Buttons extends StatefulWidget {
  final int whoSentId;

  const Buttons({super.key, required this.whoSentId});

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  void submitRequest(int whoSentId) {
    context
        .read<FriendsBloc>()
        .add(FriendsEvent.submitFriendRequest(whoSentId: whoSentId));
  }

  void rejectRequest(int whoSentId) {
    context
        .read<FriendsBloc>()
        .add(FriendsEvent.rejectFriendRequest(whoSentId: whoSentId));
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        OutlinedButton(
          style: OutlinedButton.styleFrom(
              minimumSize: const Size(40, 30),
              backgroundColor: Colors.green.shade400,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              padding: EdgeInsets.zero),
          onPressed: () {
            submitRequest(widget.whoSentId);
          },
          child: const Icon(
            Icons.done_rounded,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        OutlinedButton(
            style: OutlinedButton.styleFrom(
                minimumSize: const Size(40, 30),
                backgroundColor: Colors.red.shade400,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                padding: EdgeInsets.zero),
            onPressed: () {
              rejectRequest(widget.whoSentId);
            },
            child: const Icon(
              Icons.close_rounded,
              color: Colors.white,
            ))
      ],
    );
  }
}
