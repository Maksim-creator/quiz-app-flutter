import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizz_app/assets/colors.dart';
import 'package:quizz_app/featrures/auth/bloc/auth_bloc.dart';
import 'package:quizz_app/featrures/auth/repositories/auth_repo.dart';
import 'package:quizz_app/featrures/quizzes/cubit/quizzes_cubit.dart';
import 'package:quizz_app/featrures/user/cubit/user_cubit.dart';
import 'featrures/auth/screens/InitialScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authRepository = AuthRepo();

    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (BuildContext context) =>
                AuthBloc(authRepo: authRepository)),
        BlocProvider(create: (BuildContext context) => QuizzesCubit()),
        BlocProvider(create: (BuildContext context) => UserCubit())
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
