import 'package:flutter/material.dart';
import 'package:quizz_app/featrures/friends/bloc/friends_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizz_app/featrures/friends/widgets/FriendCard.dart';

import '../../../assets/colors.dart';
import '../../auth/models/user_data.dart';
import '../../repositories/user_repo.dart';

class IncomingRequests extends StatefulWidget {
  const IncomingRequests({super.key});

  @override
  State<IncomingRequests> createState() => _IncomingRequestsState();
}

class _IncomingRequestsState extends State<IncomingRequests> {
  @override
  void initState() {
    context.read<FriendsBloc>().add(const FriendsEvent.getIncomingRequests());
    super.initState();
  }

  Future<User> getFriend(int id) async {
    return await UserRepo().getUserById(id);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FriendsBloc, FriendsState>(builder: (context, state) {
      if (state.isIncomingRequestsLoading) {
        return Center(
          child: CircularProgressIndicator(
            color: ColorConstants.violet,
          ),
        );
      } else {
        return ListView.builder(
            itemCount: state.requestGet.length,
            itemBuilder: (context, index) {
              return FutureBuilder(
                  future: getFriend(state.requestGet[index]),
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
                            forIncomingRequests: true,
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
