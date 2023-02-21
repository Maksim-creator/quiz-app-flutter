import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizz_app/assets/colors.dart';
import 'package:quizz_app/featrures/auth/bloc/auth_bloc.dart';
import 'package:quizz_app/featrures/categories/bloc/categories_bloc.dart';
import 'package:quizz_app/featrures/leaderboard/bloc/leaderboard_bloc.dart';
import 'package:quizz_app/featrures/quizzes/bloc/quizzes_bloc.dart';
import 'package:quizz_app/featrures/repositories/auth_repo.dart';
import 'package:quizz_app/featrures/repositories/categories_repo.dart';
import 'package:quizz_app/featrures/repositories/leaderboard_repo.dart';
import 'package:quizz_app/featrures/repositories/quizzes_repo.dart';
import 'featrures/auth/screens/InitialScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authRepository = AuthRepo();
    final categoriesRepository = CategoriesRepo();
    final quizzesRepository = QuizzesRepo();
    final leaderboardRepo = LeaderboardRepo();

    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (BuildContext context) =>
                AuthBloc(authRepo: authRepository)),
        BlocProvider(
            create: (BuildContext context) =>
                CategoriesBloc(categoriesRepo: categoriesRepository)),
        BlocProvider(
            create: (BuildContext context) =>
                QuizzesBloc(quizzesRepo: quizzesRepository)),
        BlocProvider(
            create: (BuildContext context) =>
                LeaderboardBloc(leaderboardRepo: leaderboardRepo)),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        home: Navigator(
          pages: const [MaterialPage(child: InitialScreen())],
          onPopPage: (route, result) {
            return route.didPop(result);
          },
        ),
        theme: ThemeData(scaffoldBackgroundColor: ColorConstants.violet),
      ),
    );
  }
}
