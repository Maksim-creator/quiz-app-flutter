import 'package:flutter/material.dart';
import 'package:flutter_device_type/flutter_device_type.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import 'package:quizz_app/featrures/auth/screens/LoginScreen.dart';
import 'package:quizz_app/featrures/auth/screens/SignupScreen.dart';

import '../../../assets/colors.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  final String assetName = 'lib/assets/svg/logo.svg';

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
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LoginScreen()),
                                    );
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
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                SignupScreen()),
                                      );
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
