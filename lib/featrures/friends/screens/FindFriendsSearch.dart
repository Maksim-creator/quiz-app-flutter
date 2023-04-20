import 'dart:async';
import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizz_app/featrures/friends/bloc/friends_bloc.dart';
import 'package:quizz_app/featrures/repositories/user_repo.dart';
import 'package:quizz_app/featrures/friends/widgets/FriendsSerach/FriendsNotFound.dart';
import 'package:quizz_app/featrures/friends/widgets/FriendsSerach/SearchError.dart';
import '../../../assets/colors.dart';
import '../../../widgets/TextInput.dart';
import '../../auth/bloc/auth_bloc.dart';
import '../../auth/models/user_data.dart';
import '../widgets/FriendsSerach/FriendSearchCard.dart';

class FindFriendsSearch extends StatefulWidget {
  const FindFriendsSearch({super.key});

  @override
  State<FindFriendsSearch> createState() => _FindFriendsSearchState();
}

class _FindFriendsSearchState extends State<FindFriendsSearch> {
  TextEditingController search = TextEditingController();

  Future<Either<String, List<User>>> handleFriendSearch(String? name) async =>
      await UserRepo().searchUser(name);

  final StreamController<String> _searchStream = StreamController<String>();

  @override
  void initState() {
    super.initState();

    search.addListener(() {
      _searchStream.add(search.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(
              Icons.chevron_left,
              color: Colors.white,
              size: 32,
            )),
        title: const Text(
          'Find friends by search',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: ColorConstants.violet,
        elevation: 0,
      ),
      body: SafeArea(child: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, authState) {
          return BlocBuilder<FriendsBloc, FriendsState>(
            builder: (context, state) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                        height: 80,
                        child: TextInput(
                          hintText: 'Type your firend name',
                          label: '',
                          prefixIcon: Icons.search,
                          controller: search,
                          iconColor: Colors.white,
                          inputBackground: ColorConstants.darkViolet,
                          hintTextColor: ColorConstants.darkGrey,
                          inputTextColor: Colors.white,
                          verticalInputPadding: 0,
                        )),
                    StreamBuilder<String>(
                        initialData: '',
                        stream: _searchStream.stream,
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            String? query = snapshot.data;
                            return FutureBuilder(
                                future: handleFriendSearch(query),
                                builder: (context, snapshot) {
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {
                                    return const Center(
                                      child: CircularProgressIndicator(
                                        color: Colors.white,
                                      ),
                                    );
                                  }
                                  if (snapshot.connectionState ==
                                      ConnectionState.done) {
                                    return snapshot.data!.fold((error) {
                                      return SearchError(
                                        error: error,
                                      );
                                    }, (users) {
                                      return users.isEmpty
                                          ? FriendsNotFound(name: search.text)
                                          : ListView.builder(
                                              itemCount: users.length,
                                              shrinkWrap: true,
                                              itemBuilder: ((context, index) {
                                                final User user = users[index];
                                                return FriendSearchCard(
                                                  index: index,
                                                  user: user,
                                                  myId: authState.id,
                                                  friends: state.friends,
                                                  requestSent:
                                                      state.requestSent,
                                                );
                                              }));
                                    });
                                  } else {
                                    return const SearchError(
                                        error:
                                            'Something went wrong. Try again later');
                                  }
                                });
                          } else if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return const CircularProgressIndicator(
                              color: Colors.white,
                            );
                          } else {
                            return const SearchError(
                                error: 'Something went wrong. Try again later');
                          }
                        })
                  ],
                ),
              );
            },
          );
        },
      )),
    );
  }
}
