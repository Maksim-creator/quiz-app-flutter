import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizz_app/assets/colors.dart';
import 'package:quizz_app/featrures/friends/widgets/FriendCard.dart';
import 'package:quizz_app/utils/api_requests.dart';

import '../bloc/friends_bloc.dart';

class FriendsList extends StatefulWidget {
  const FriendsList({super.key});

  @override
  State<FriendsList> createState() => _FriendsListState();
}

class _FriendsListState extends State<FriendsList> {
  @override
  void initState() {
    context.read<FriendsBloc>().add(const FriendsEvent.getFriendsList());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FriendsBloc, FriendsState>(builder: (context, state) {
      if (state.isFriendsLoading) {
        return Center(
          child: CircularProgressIndicator(
            color: ColorConstants.violet,
          ),
        );
      } else {
        return ListView.builder(
            itemCount: state.friends.length,
            itemBuilder: (context, index) {
              return FutureBuilder(
                  future: ApiHelpersRequest().getUserById(state.friends[index]),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return SizedBox(
                        height: 70,
                        child: Center(
                          child: CircularProgressIndicator(
                            color: ColorConstants.violet,
                          ),
                        ),
                      );
                    } else if (snapshot.connectionState ==
                        ConnectionState.done) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 9),
                        child: FriendCard(
                            id: snapshot.data!.id,
                            name: snapshot.data!.name,
                            points: snapshot.data!.totalExperience,
                            avatar: snapshot.data!.avatar),
                      );
                    } else {
                      return const Text('data');
                    }
                  });
            });
      }
    });
  }
}
