import 'package:flutter/material.dart';
import 'package:flutter_device_type/flutter_device_type.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import 'package:quizz_app/featrures/auth/bloc/auth_bloc.dart';
import 'package:quizz_app/featrures/auth/screens/LoginScreen.dart';
import 'package:quizz_app/featrures/auth/screens/SignupScreen.dart';

import '../../../assets/colors.dart';
import '../../user/screens/BottomTabsNavigation.dart';
import '../utils/entities.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  final storage = const FlutterSecureStorage();

  Future<void> _readFromStorage() async {
    String? login = await storage.read(key: "KEY_USERNAME");
    String? password = await storage.read(key: "KEY_PASSWORD");

    if (login != null && password != null) {
      SignInData signInData = SignInData(email: login, password: password);

      context.read<AuthBloc>().add(AuthEvent.login(signInData: signInData));

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const BottomTabs()),
      );
    }
  }

  final String assetName = 'lib/assets/svg/logo.svg';

  @override
  void initState() {
    super.initState();
    _readFromStorage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Align(
            alignment: Alignment.bottomCenter,
            child: SafeArea(
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                SvgPicture.asset(assetName),
                Flexible(
                  child: FractionallySizedBox(
                      widthFactor: 1,
                      child: Stack(children: [
                        Positioned.fill(
                          child: Lottie.asset(
                            'lib/assets/lottieAnimations/initialScreen.json',
                          ),
                        )
                      ])),
                ),
                Flexible(
                    child: FractionallySizedBox(
                  widthFactor: 0.9,
                  child: Container(
                    height: 270,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    margin: EdgeInsets.only(
                        bottom: Device.get().isTablet || Device.get().isAndroid
                            ? 20
                            : 0),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 25),
                    child: Column(children: [
                      const Text(
                        'Login or Sign up',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w700),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Text(
                          'Login or create an account to take quiz, take part in challenges and more.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: ColorConstants.grey,
                              fontSize: 13,
                              height: 1.5),
                        ),
                      ),
                      Flexible(
                        child: FractionallySizedBox(
                          heightFactor: 1,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushReplacementNamed(
                                        context, '/login_screen');
                                  },
                                  style: ElevatedButton.styleFrom(
                                      padding: const EdgeInsets.all(15),
                                      backgroundColor: ColorConstants.violet,
                                      shape: const StadiumBorder(),
                                      minimumSize: const Size.fromHeight(40)),
                                  child: const Text(
                                    'Login',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w800),
                                  ),
                                ),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      padding: const EdgeInsets.all(15),
                                      backgroundColor: ColorConstants.lightGrey,
                                      shape: const StadiumBorder(),
                                      minimumSize: const Size.fromHeight(40),
                                    ),
                                    onPressed: () {
                                      Navigator.pushReplacementNamed(
                                          context, '/registration_screen');
                                    },
                                    child: Text(
                                      'Create an acoount',
                                      style: TextStyle(
                                          color: ColorConstants.violet,
                                          fontWeight: FontWeight.w800),
                                    )),
                              ]),
                        ),
                      )
                    ]),
                  ),
                ))
              ]),
            )));
  }
}
