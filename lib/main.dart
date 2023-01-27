import 'package:flutter/material.dart';
import 'package:quizz_app/assets/colors.dart';
import 'featrures/auth/screens/InitialScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Navigator(
        pages: const [MaterialPage(child: InitialScreen())],
        onPopPage: (route, result) {
          return route.didPop(result);
        },
      ),
      theme: ThemeData(scaffoldBackgroundColor: ColorConstants.violet),
    );
  }
}
