import 'package:flutter/material.dart';

import '../featrures/auth/screens/InitialScreen.dart';
import '../featrures/auth/screens/LoginScreen.dart';
import '../featrures/auth/screens/SignupScreen.dart';
import '../featrures/battles/screens/BattlesScreen.dart';
import '../featrures/categories/screens/TopicsListScreen.dart';
import '../featrures/friends/screens/FindFriends.dart';
import '../featrures/friends/screens/FindFriendsSearch.dart';
import '../featrures/quizzes/models/quiz.dart';
import '../featrures/quizzes/screens/CountSelection.dart';
import '../featrures/quizzes/screens/QuizScreen.dart';
import '../featrures/quizzes/screens/ReviewQuiz.dart';
import '../featrures/user/profile/screens/SettingsScreens/PassCheck.dart';
import '../featrures/user/profile/screens/SettingsScreens/Settings.dart';
import '../featrures/user/profile/screens/SettingsScreens/UpdateProfile.dart';
import '../featrures/user/profile/screens/SettingsScreens/UsernameChange.dart';
import '../featrures/user/screens/BottomTabsNavigation.dart';

const String initialRoute = '/initial';

final Map<String, Widget Function(BuildContext)> routes = {
  '/initial': (context) => const InitialScreen(),
  '/login_screen': (context) => const LoginScreen(),
  '/registration_screen': (context) => const SignupScreen(),
  '/main_screen': (context) => const BottomTabs(),
  '/main_screen/topics_list_screen': (context) {
    final category = ModalRoute.of(context)!.settings.arguments as String;

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
    final args = ModalRoute.of(context)!.settings.arguments as QuizScreenArgs;

    return QuizScreen(
      id: args.id,
      topic: args.topic,
      count: args.count,
      icon: args.icon,
    );
  },
  '/main_screen/review_quiz_screen': ((context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as ReviewQuizScreenArgs;
    return ReviewQuiz(
      questions: args.questions,
      score: args.score,
      skipped: args.skipped,
      incorrectAnswers: args.incorrectAnswers,
      topic: args.topic,
    );
  }),
  '/main_screen/settings': ((context) => const Settings()),
  '/main_screen/settings/update_profile': ((context) => const UpdateProfile()),
  '/main_screen/settings/update_profile/password_check': ((context) =>
      const PassCheck()),
  '/main_screen/settings/update_profile/password_check/username_change':
      ((context) => const UsernameChange()),
  '/main_screen/find_friends': ((context) => const FindFriends()),
  '/main_screen/find_friends/search_users': ((context) =>
      const FindFriendsSearch()),
  '/main_screen/battles': ((context) => const BattlesScreen())
};
