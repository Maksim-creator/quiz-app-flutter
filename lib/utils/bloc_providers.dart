import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../featrures/auth/bloc/auth_bloc.dart';
import '../featrures/categories/bloc/categories_bloc.dart';
import '../featrures/friends/bloc/friends_bloc.dart';
import '../featrures/leaderboard/bloc/leaderboard_bloc.dart';
import '../featrures/quizzes/bloc/quizzes_bloc.dart';
import '../featrures/repositories/auth_repo.dart';
import '../featrures/repositories/categories_repo.dart';
import '../featrures/repositories/friends_repo.dart';
import '../featrures/repositories/leaderboard_repo.dart';
import '../featrures/repositories/quizzes_repo.dart';
import '../featrures/repositories/user_repo.dart';
import '../featrures/user/bloc/user_bloc.dart';

final authRepository = AuthRepo();
final categoriesRepository = CategoriesRepo();
final quizzesRepository = QuizzesRepo();
final leaderboardRepo = LeaderboardRepo();
final userRepo = UserRepo();
final friendsRepo = FriendsRepo();

class BlocProviders {
  static get getBlocProviders {
    return [
      BlocProvider(
          create: (BuildContext context) => AuthBloc(authRepo: authRepository)),
      BlocProvider(
          create: (BuildContext context) =>
              CategoriesBloc(categoriesRepo: categoriesRepository)),
      BlocProvider(
          create: (BuildContext context) =>
              QuizzesBloc(quizzesRepo: quizzesRepository)),
      BlocProvider(
          create: (BuildContext context) =>
              LeaderboardBloc(leaderboardRepo: leaderboardRepo)),
      BlocProvider(
          create: (BuildContext conttext) => UserBloc(userRepo: userRepo)),
      BlocProvider(
          create: (BuildContext context) =>
              FriendsBloc(friendsRepo: friendsRepo))
    ];
  }
}
