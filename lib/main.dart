import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizz_app/assets/colors.dart';
import 'package:quizz_app/featrures/auth/bloc/auth_bloc.dart';
import 'package:quizz_app/featrures/auth/screens/LoginScreen.dart';
import 'package:quizz_app/featrures/auth/screens/SignupScreen.dart';
import 'package:quizz_app/featrures/categories/bloc/categories_bloc.dart';
import 'package:quizz_app/featrures/categories/screens/TopicsListScreen.dart';
import 'package:quizz_app/featrures/leaderboard/bloc/leaderboard_bloc.dart';
import 'package:quizz_app/featrures/quizzes/bloc/quizzes_bloc.dart';
import 'package:quizz_app/featrures/quizzes/screens/QuizScreen.dart';
import 'package:quizz_app/featrures/quizzes/screens/ReviewQuiz.dart';
import 'package:quizz_app/featrures/repositories/auth_repo.dart';
import 'package:quizz_app/featrures/repositories/categories_repo.dart';
import 'package:quizz_app/featrures/repositories/leaderboard_repo.dart';
import 'package:quizz_app/featrures/repositories/quizzes_repo.dart';
import 'package:quizz_app/featrures/user/screens/BottomTabsNavigation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'featrures/auth/screens/InitialScreen.dart';
import './featrures/quizzes/screens/CountSelection.dart';
import 'featrures/quizzes/models/quiz.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    SharedPreferences.setMockInitialValues({'token': ''});
    super.initState();
  }

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
        initialRoute: '/initial',
        routes: {
          '/initial': (context) => const InitialScreen(),
          '/login_screen': (context) => const LoginScreen(),
          '/registration_screen': (context) => const SignupScreen(),
          '/main_screen': (context) => const BottomTabs(),
          '/main_screen/topics_list_screen': (context) {
            final category =
                ModalRoute.of(context)!.settings.arguments as String;

            return TopicsListScreen(
              category: category,
            );
          },
          '/main_screen/count_selection': (context) {
            final args = ModalRoute.of(context)!.settings.arguments as Topic;
            return CountSelection(
              topic: args,
            );
          },
          '/main_screen/quiz_screen': (context) {
            final args =
                ModalRoute.of(context)!.settings.arguments as QuizScreenArgs;

            return QuizScreen(
              topic: args.topic,
              count: args.count,
            );
          },
          '/main_screen/review_quiz_screen': ((context) {
            final args = ModalRoute.of(context)!.settings.arguments
                as ReviewQuizScreenArgs;
            return ReviewQuiz(
              questions: args.questions,
              score: args.score,
              skipped: args.skipped,
              incorrectAnswers: args.incorrectAnswers,
              topic: args.topic,
            );
          })
        },
        theme: ThemeData(scaffoldBackgroundColor: ColorConstants.violet),
      ),
    );
  }
}
