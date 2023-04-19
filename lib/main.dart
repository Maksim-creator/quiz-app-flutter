import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizz_app/assets/colors.dart';
import 'package:quizz_app/utils/bloc_providers.dart';
import 'package:quizz_app/utils/navigation.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
    return MultiBlocProvider(
      providers: BlocProviders.getBlocProviders,
      child: MaterialApp(
        initialRoute: initialRoute,
        routes: routes,
        theme: ThemeData(
            scaffoldBackgroundColor: ColorConstants.violet,
            fontFamily: 'Rubik'),
      ),
    );
  }
}
